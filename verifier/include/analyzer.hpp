#ifndef MASKSCRAPE_ANALYZER_H
#define MASKSCRAPE_ANALYZER_H

#include <map>
#include <memory>
#include <optional>
#include <set>

#include <llvm/ADT/iterator_range.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Type.h>

#include "affine_checker.hpp"
#include "analog.hpp"
#include "log.hpp"
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include <affine_poly.hpp>
#include <alias_map.hpp>
#include <builtin.hpp>
#include <expr.hpp>
#include <gf2_int.hpp>
#include <multimap.hpp>
#include <order.hpp>
#include <poly_div.hpp>
#include <symbol.hpp>
#include <symbol_map.hpp>

namespace maskscrape {

struct Analyzer : AnalyzerLog<Analyzer> {
  using constant = gf2_int8;

  using exprs = maskscrape::exprs<Symbol, gf2_int8, AffineFunction<constant>>;
  using poly = affine_polynomial<Symbol, gf2_int8, AffineFunction<constant>>;
  using expr = exprs::value;
  // using expr = poly;

  const llvm::Function *func;

  auto getCurrentFunc() const { return func; }

  // inline status
  SymbolMap<expr> polyMap;
  AliasMap aliasMap;
  Map<Symbol, Symbol> cmpMap;
  std::set<AffineFunction<constant>> affineSet;

  std::vector<std::pair<expr, expr>> assertList;

  // interprocedural status
  MultiMap<poly, poly, order<poly>> assumeMap;
  MultiMap<poly, poly, order<poly>> assertMap;
  Map<const llvm::Function *, decltype(assertMap)> funcMap;

  std::vector<poly> unsatAssertList;

  Analyzer(const llvm::Function *func) : func(func) {}

  bool invalidType(const llvm::Instruction &ins, const llvm::Type *t) const {
    if (t != llvm::Type::getInt8Ty(func->getContext())) {
      wlog("skip type '{0}'", ins, *t);
      return true;
    }

    return false;
  }

  bool invalidPtrType(const llvm::Instruction &ins, const llvm::Type *t) const {
    return invalidType(ins, t->getPointerElementType());
  }

  const Symbol &dealias(const Symbol &v) const { return aliasMap.dealias(v); }

  auto makeAlias(const Symbol &alias, const Symbol &sym) {
    return aliasMap.makeAlias(alias, sym);
  }

  auto updateSymbol(const Symbol &target, const expr &p) {
    return polyMap.updateSymbol(target, p);
  }

  auto copySymbol(const Symbol &val, const Symbol &from) {
    return polyMap.copySymbol(val, from);
  }

  std::optional<expr> getPolyFromValue(const llvm::Instruction &ins,
                                       const llvm::Value *v) const {
    auto p = polyMap.getPolyFromValue(v, aliasMap);
    if (!p) {
      wlog("value '{0}' is not found", ins, v);
    }

    return p;
  }

  static bool isVerifiable(const llvm::Function *f) {
    return f->hasFnAttribute("verify");
  }

  void processInst(const llvm::StoreInst &storeInst) {

    if (invalidPtrType(storeInst, storeInst.getPointerOperandType())) {
      return;
    }

    const auto *valToStore = storeInst.getValueOperand();
    const auto *targetPtr = storeInst.getPointerOperand();

    Symbol target = dealias(targetPtr);

    auto p = getPolyFromValue(storeInst, valToStore);

    if (!p) {
      return;
    }

    updateSymbol(target, *p);
  }

  void processInst(const llvm::LoadInst &ins) {
    const auto *ptr = ins.getPointerOperand();

    if (invalidPtrType(ins, ptr->getType())) {
      return;
    }

    const auto *val = llvm::cast<llvm::Value>(&ins);

    Symbol from = dealias(ptr);

    copySymbol(val, from);
  }

  size_t getOffset(const llvm::Instruction &ins, const llvm::Type *pointedType,
                   const llvm::iterator_range<const llvm::Use *> &index) const {
    size_t stride = 1, offset = 0;

    for (const auto *type = pointedType;
         auto arrType = llvm::dyn_cast<llvm::ArrayType>(type);
         type = arrType->getElementType()) {
      stride *= arrType->getNumElements();
    }

    for (const auto &i : index) {
      if (const auto *c = llvm::dyn_cast<llvm::Constant>(i)) {
        offset += stride * c->getUniqueInteger().getSExtValue();
      } else {
        wlog("index '{0}' is not constant", ins,
             static_cast<const llvm::Value *>(i));
        return 0;
      }

      if (auto arrType = llvm::dyn_cast<llvm::ArrayType>(pointedType)) {
        stride /= arrType->getNumElements();
        pointedType = arrType->getElementType();
      }
    }

    return offset;
  }

  size_t getElemOffset(const llvm::GetElementPtrInst &ins) const {
    return getOffset(ins, ins.getSourceElementType(), ins.indices());
  }

  void processInst(const llvm::GetElementPtrInst &inst) {
    const auto *ptr = inst.getPointerOperand();

    Symbol arrayElemSym = dealias(ptr);

    arrayElemSym.offset += getElemOffset(inst);

    const auto *val = llvm::cast<llvm::Value>(&inst);
    makeAlias(val, arrayElemSym);
  }

  void processInst(const llvm::BitCastInst &ins) {
    const auto *val = ins.getOperand(0);
    const auto *var = llvm::cast<llvm::Value>(&ins);

    Symbol ptr = dealias(val);

    makeAlias(var, ptr);
  }

  void processCast(const llvm::Instruction &ins) {
    const auto *val = ins.getOperand(0);
    const auto *typ = val->getType();

    if (!typ->isIntegerTy()) {
      wlog("skip type '{0}'", ins, *val->getType());
      return;
    }

    const auto *var = llvm::cast<llvm::Value>(&ins);

    auto p = getPolyFromValue(ins, val);
    if (!p) {
      return;
    }

    updateSymbol(var, *p);
  }

  std::optional<Symbol> cmpGetSym(const exprs::value &p) {
    if (auto e = exprs::DynCast<exprs::Variable>(p)) {
      return e->var;
    }

    return std::nullopt;
  }

  std::optional<Symbol> cmpGetSym(const poly &p) {
    if (auto sym = p.getVariable(); sym && sym->is_normal()) {
      return sym->normal();
    }

    return std::nullopt;
  }

  bool updateCmp(const llvm::ICmpInst &ins, const llvm::Value *v) {
    if (auto iter = polyMap.get(Symbol(v))) {
      if (auto v = cmpGetSym(*iter)) {
        cmpMap.emplace(llvm::cast<llvm::Value>(&ins), *v);
        return true;
      }
    } else {
      wlog("value '{0}' is not found", ins, v);
    }

    return false;
  }

  void processXor(const llvm::Instruction &ins) {
    const auto *lhs = ins.getOperand(0), *rhs = ins.getOperand(1);

    auto lp = getPolyFromValue(ins, lhs), rp = getPolyFromValue(ins, rhs);

    if (!lp || !rp) {
      return;
    }

    polyMap.emplace(llvm::cast<llvm::Value>(&ins), *lp + *rp);
  }

  void processInst(const llvm::ICmpInst &inst) {
    if (inst.getUnsignedPredicate() != llvm::ICmpInst::ICMP_EQ) {
      wlog("expect EQ but got {0}", inst,
           inst.getPredicateName(inst.getUnsignedPredicate()));
      return;
    }

    if (!updateCmp(inst, inst.getOperand(0))) {
      updateCmp(inst, inst.getOperand(1));
    }

    processXor(inst);
  }

  void processMult(const llvm::CallInst &inst) {
    const auto *ret = llvm::cast<llvm::Value>(&inst);

    const auto *lhs = inst.getArgOperand(0), *rhs = inst.getArgOperand(1);

    auto lp = getPolyFromValue(inst, lhs), rp = getPolyFromValue(inst, rhs);

    if (!lp || !rp) {
      return;
    }

    polyMap.emplace(ret, *lp * *rp);
  }

  void processRand(const llvm::CallInst &inst) {
    const auto *ret = llvm::cast<llvm::Value>(&inst);

    polyMap.emplace(ret, Symbol(ret));
  }

  void processAssume(const llvm::CallInst &inst) {
    const auto *val = inst.getArgOperand(0);

    if (auto iter = cmpMap.get(Symbol(val))) {
      if (auto jter = polyMap.get(*iter)) {
        *jter = polyMap.at(iter.key()) + *jter;
      } else {
        wlog("assumed value of symbol '{0}' is not found", inst, *iter);
      }
    } else {
      wlog("assumed variable '{0}' is not found", inst, val);
    }
  }

  void processAssert(const llvm::CallInst &inst, bool &sat) {
    const auto *val = inst.getArgOperand(0);

    if (auto iter = polyMap.get(Symbol(val))) {
      // auto p = *iter;
      auto p = iter->get_poly();
      auto pr = p.rewrite();
      dlog("assert result: {0}", pr);

      constant rec;
      if (pr == poly::zero) {
        wlog("assert is sat", inst);
      } else if (auto prc = pr.getConstant()) {
        sat = false;
        dlog("rewritten to a non-zero constant: {0}", inst, *prc);
        wlog("assert is unsat", inst);
      } else if (auto re = expr::random_eval{}; (rec = re.eval(*iter)) != 0) {
        sat = false;
        dlog("random testing failed to get a zero, assignments: {0}, result: {1}", inst, re, rec);
        wlog("assert is unsat", inst);
      } else {
        auto cmp = llvm::cast<llvm::Instruction>(inst.getOperand(0));

        auto el = getPolyFromValue(inst, cmp->getOperand(0)),
             er = getPolyFromValue(inst, cmp->getOperand(1));
        // poly l = *el, r = *er;
        poly l = el->get_poly(), r = er->get_poly();

        auto assumeMapAffine = assumeMap;
        for (const auto &f : affineSet) {
          for (const auto &[k, v] : assumeMap) {
            assumeMapAffine.emplace(poly(poly::affine_type{f, k}).rewrite(),
                                    poly(poly::affine_type{f, v}).rewrite());
          }
        }

        auto sl = polySubstitute(l, assumeMapAffine);
        auto sr = polySubstitute(r, assumeMapAffine);
        if ((sl + sr).rewrite() != poly::zero) {
          wlog("assert is unsat", inst);

          unsatAssertList.push_back(std::move(pr));
          sat = false;
        } else {
          wlog("assert is sat", inst);
        }
      }
    } else {
      wlog("value '{0}' is not found", inst, val);
    }

    auto [l, r] = getAssert(inst);
    // auto pl = l;
    auto pl = l.get_poly();
    // auto pr = r;
    auto pr = r.get_poly();

    if (pl + pr != poly::zero) {
      assertList.push_back({l, r});
      assertMap.emplace(pr, pl);
    }
  }

  void processInst(const llvm::CallInst &inst, bool &sat) {
    const auto *callee = inst.getCalledFunction();

    if (MultFn.is(callee)) {
      processMult(inst);

    } else if (RandFn.is(callee)) {
      processRand(inst);

    } else if (AssumeFn.is(callee)) {
      processAssume(inst);

    } else if (AssertFn.is(callee)) {
      processAssert(inst, sat);

    } else if (isVerifiable(callee)) {
      processCall(inst, sat);

    } else if (auto affine = Gf2AffineMap.get_affine(callee)) {
      processAffine(inst, *affine);

    } else {
      elog("unknown function `{0}` to verify", inst, callee->getName());
    }
  }

  void processAffine(const llvm::CallInst &inst,
                     const AffineFunction<poly::constant_type> &affine) {
    const auto *arg = inst.getArgOperand(0);
    const auto *var = llvm::cast<llvm::Value>(&inst);

    auto p = getPolyFromValue(inst, arg);

    // updateSymbol(var, poly::affine_type{affine, *p});
    updateSymbol(var, p->affine(affine));
    affineSet.emplace(affine);
  }

  auto substituteSymbol(const llvm::CallInst &inst, const Symbol &from)
      -> std::optional<Symbol> {
    for (size_t i = 0; i < inst.arg_size(); ++i) {
      Symbol f = inst.getCalledFunction()->getArg(i);
      Symbol t = dealias(inst.getArgOperand(i));

      if (f.val == from.val) {
        t.offset += from.offset;
        return t;
      }
    }

    return std::nullopt;
  };

  auto substituteSymbolToPoly(const llvm::CallInst &inst, const Symbol &from)
      -> std::optional<expr> {
    if (auto opt = substituteSymbol(inst, from)) {
      return polyMap.getOrSelf(opt.value());
    }

    return std::nullopt;
  }

  void processCall(const llvm::CallInst &inst, bool &sat) {
    const auto *callee = inst.getCalledFunction();

    if (!funcMap.contains(callee)) {
      Analyzer calleeAnal{callee};

      // this prevent concurrent
      calleeAnal.funcMap = std::move(funcMap);

      if (sat = sat && calleeAnal.analyze(); !sat)
        return;

      funcMap = std::move(calleeAnal.funcMap);

      funcMap[callee] = std::move(calleeAnal.assertMap);
    }

    auto symSub = [this, &inst](const Symbol &from) {
      // return substituteSymbolToPoly(inst, from);
      return substituteSymbolToPoly(inst, from)->get_poly();
    };

    for (auto &&[l, r] : funcMap[callee]) {
      auto subl = l.general_assign_normal(symSub);
      auto subr = r.general_assign_normal(symSub);

      assumeMap.emplace(subl, subr);
    }
  }

  bool analyze() {
    bool sat = true;

    ilog("enter");

    if (func->getBasicBlockList().empty()) {
      elog("definition not found");
      return false;
    }

    if (func->getBasicBlockList().size() > 1) {
      wlog("more than one basic block");
    }

    for (const auto &ins : func->getEntryBlock()) {
      switch (ins.getOpcode()) {

      case llvm::Instruction::Alloca:
        break;

      case llvm::Instruction::Store:
        processInst(llvm::cast<llvm::StoreInst>(ins));
        break;

      case llvm::Instruction::Load:
        processInst(llvm::cast<llvm::LoadInst>(ins));
        break;

      case llvm::Instruction::GetElementPtr:
        processInst(llvm::cast<llvm::GetElementPtrInst>(ins));
        break;

      case llvm::Instruction::BitCast:
        processInst(llvm::cast<llvm::BitCastInst>(ins));
        break;

      case llvm::Instruction::ICmp:
        processInst(llvm::cast<llvm::ICmpInst>(ins));
        break;

      case llvm::Instruction::Xor:
        processXor(ins);
        break;

      case llvm::Instruction::Call:
        processInst(llvm::cast<llvm::CallInst>(ins), sat);
        break;

      case llvm::Instruction::ZExt:
      case llvm::Instruction::Trunc:
        processCast(ins);
        break;

      case llvm::Instruction::Ret:
        ilog("leave");
        break;

      default:
        wlog("skip instruction", ins);
        break;
      }
    }

    return sat;
  }

  void dump(llvm::raw_ostream &OS) const {
    for (const auto &[k, v] : polyMap) {
      OS << k << " : " << v << "\n";
      OS << "SMT " << k << " : " << expr::smt_dump{v} << "\n";
      OS << "POL " << k << " : " << v.get_poly() << "\n";
    }

    for (const auto &[k, v] : aliasMap) {
      OS << k << " -> " << v << "\n";
    }

    for (const auto &[k, v] : cmpMap) {
      OS << k << " >> " << v << "\n";
    }

    for (const auto &[k, v] : assumeMap) {
      OS << "assume " << k << " == " << v << "\n";
    }

    for (const auto &[k, v] : assertMap) {
      OS << "assert " << k << " == " << v << "\n";
    }
  }

  expr checkBackAssert_processInst(const llvm::CallInst *call) const {
    auto fn = call->getCalledFunction();

    if (MultFn.is(fn)) {
      return checkBackAssert(call->getArgOperand(0)) *
             checkBackAssert(call->getArgOperand(1));
    } else if (RandFn.is(fn)) {
      if (auto iter = polyMap.get(call)) {
        return *iter;
      } else {
        wlog("failed to get assert poly: value `{0}` not found", *call,
             static_cast<const llvm::Value *>(call));
      }
    } else if (auto affine = Gf2AffineMap.get_affine(fn)) {
      return checkBackAssert(call->getArgOperand(0)).affine(*affine);
      // return checkBackAssert(call->getArgOperand(0));
    } else {
      wlog("failed to get assert poly: unknown function `{0}`", *call,
           fn->getName());
    }

    return constant();
  }

  expr checkBackAssert(const llvm::Value *v) const {
    if (auto c = dyn_cast<llvm::Constant>(v); c && !isa<llvm::UndefValue>(c)) {
      return constant(c->getUniqueInteger().getZExtValue());
    }

    auto ins = llvm::dyn_cast<llvm::Instruction>(v);
    alog(ins != nullptr);

    switch (ins->getOpcode()) {
    case llvm::Instruction::Xor:
      return checkBackAssert(ins->getOperand(0)) +
             checkBackAssert(ins->getOperand(1));

    case llvm::Instruction::Call:
      return checkBackAssert_processInst(llvm::cast<llvm::CallInst>(ins));

    case llvm::Instruction::Load:
      return dealias(ins->getOperand(0));

    case llvm::Instruction::ZExt:
    case llvm::Instruction::Trunc:
      return checkBackAssert(ins->getOperand(0));

    default:
      wlog("failed to get assert poly: invalid instruction type", *ins);
    }

    return constant();
  }

  std::pair<expr, expr> getAssert(const llvm::Instruction &ins) const {
    auto cmp = llvm::cast<llvm::Instruction>(ins.getOperand(0));

    auto lhs = cmp->getOperand(0);
    auto rhs = cmp->getOperand(1);

    return {checkBackAssert(lhs), checkBackAssert(rhs)};
  }

  enum class SMTDumpConfig {
    normal = 0,
    substituteSymbol,
    afterRewrite,
  };

  void dumpSMT(llvm::raw_ostream &OS, SMTDumpConfig config = SMTDumpConfig::normal) {
    llvm::StringRef addDef = R"(
(define-fun gf2add ((a (_ BitVec 8)) (b (_ BitVec 8))) (_ BitVec 8)
  (bvxor a b)
)
)";
    llvm::StringRef mulDef = R"(
(define-fun gf2mul-cnt ((a (_ BitVec 8)) (b (_ BitVec 8)) (n (_ BitVec 8))) (_ BitVec 8)
  (ite (= #b1 ((_ extract 0 0) (bvlshr b n))) (bvshl a n) #x00)
)
(define-fun gf2mul ((a (_ BitVec 8)) (b (_ BitVec 8))) (_ BitVec 8)
  (bvxor
    (gf2mul-cnt a b #x00)
  (bvxor
    (gf2mul-cnt a b #x01)
  (bvxor
    (gf2mul-cnt a b #x02)
  (bvxor
    (gf2mul-cnt a b #x03)
  (bvxor
    (gf2mul-cnt a b #x04)
  (bvxor
    (gf2mul-cnt a b #x05)
  (bvxor
    (gf2mul-cnt a b #x06)
    (gf2mul-cnt a b #x07)
  )))))))
)
)";

    if (assertList.empty()) {
      elog("cannot dump SMT code since there is no assertation");
      return;
    }

    llvm::StringRef bvType = "(_ BitVec 8)";
    llvm::StringRef checkSat = "(check-sat)";
    llvm::StringRef getModel = "(get-model)";

    std::set<Symbol> syms;

    std::function<std::optional<Symbol>(const Symbol &, const Symbol *)>
        collectSymbols =
            [this, &syms, &collectSymbols](
                const Symbol &v, const Symbol *pa) -> std::optional<Symbol> {
      syms.insert(v);
      if (auto it = polyMap.get(v); it && &v != pa) {
        it->substitute(
            [&collectSymbols, &v](const Symbol &s) -> std::optional<Symbol> {
              return collectSymbols(s, &v);
            });
      }

      return std::nullopt;
    };

    for (const auto &[l, r] : assertList) {
      l.substitute([collectSymbols](const Symbol &v) {
        return collectSymbols(v, nullptr);
      });
      r.substitute([collectSymbols](const Symbol &v) {
        return collectSymbols(v, nullptr);
      });
    }

    std::vector<std::pair<Symbol, expr>> assigns;

    if (config == SMTDumpConfig::normal) {
      for (const auto &s : syms) {
        if (auto it = polyMap.get(s)) {
          assigns.push_back({s, *it});
        }
      }
    }

    std::vector<std::pair<expr, expr>> asserts;

    if (config == SMTDumpConfig::substituteSymbol) {
      std::function<std::optional<expr>(const Symbol &, const Symbol *)> rep =
          [this, &rep](const Symbol &v,
                       const Symbol *pa) -> std::optional<expr> {
        if (auto it = polyMap.get(v); it && &v != pa) {
          return it->general_assign(
              [&rep, &v](const Symbol &s) { return rep(s, &v); });
        }

        return std::nullopt;
      };

      for (const auto &[l, r] : assertList) {
        asserts.push_back({l.general_assign([&rep](const Symbol &s) {
                             return rep(s, nullptr);
                           }),
                           r.general_assign([&rep](const Symbol &s) {
                             return rep(s, nullptr);
                           })});
      }
    }

    auto dumpAnd = [](llvm::raw_ostream &OS, const auto &range,
                      const auto &fn) {
      for (const auto &s : range) {
        OS << "(and " << fn(s) << "\n";
      }
      OS << "true\n";
      for (const auto &_ : range) {
        OS << ")";
      }
      OS << "\n";
    };

    OS << addDef << mulDef;
    OS << "(assert (forall\n";
    OS << "(\n";
    for (const auto &s : syms) {
      OS << llvm::formatv("({0} {1})\n", exprs::value::smt_symbol{s}, bvType);
    }
    OS << ")\n";
    if (config == SMTDumpConfig::substituteSymbol) {
      dumpAnd(OS, asserts, [](const auto &p) {
        return llvm::formatv("(= {0} {1})", exprs::value::smt_dump{p.first},
                             exprs::value::smt_dump{p.second});
      });
    } else if (config == SMTDumpConfig::afterRewrite) {
      dumpAnd(OS, unsatAssertList, [](const auto &p) {
        auto v = exprs::value::from_poly(p);
        return llvm::formatv("(= {0} #x00)", exprs::value::smt_dump{v});
      });
    } else {
      OS << "(=>\n";
      dumpAnd(OS, assigns, [](const auto &p) {
        return llvm::formatv("(= {0} {1})", exprs::value::smt_symbol{p.first},
                             exprs::value::smt_dump{p.second});
      });
      dumpAnd(OS, assertList, [](const auto &p) {
        return llvm::formatv("(= {0} {1})", exprs::value::smt_dump{p.first},
                             exprs::value::smt_dump{p.second});
      });
      OS << ")\n";
    }
    OS << "))\n";
    OS << checkSat << "\n";
    OS << getModel << "\n";
  }
};

inline llvm::raw_ostream &operator<<(llvm::raw_ostream &Stream,
                                     const Analyzer &anal) {
  anal.dump(Stream);
  return Stream;
}

} // namespace maskscrape

#endif // MASKSCRAPE_ANALYZER_H
