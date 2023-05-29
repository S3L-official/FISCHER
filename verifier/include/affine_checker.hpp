#ifndef MASKSCRAPE_AFFINE_CHECKER_H
#define MASKSCRAPE_AFFINE_CHECKER_H

#include "affine_poly.hpp"
#include "analog.hpp"
#include "builtin.hpp"
#include "gf2_int.hpp"
#include "log.hpp"
#include "map.hpp"
#include "polynomial.hpp"
#include "symbol.hpp"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Casting.h"
#include <llvm/IR/Function.h>
#include <llvm/IR/Instruction.h>
#include <optional>

namespace maskscrape {

template <typename C> struct AffineFunction {
  const llvm::Function *func;
  C c;

  explicit AffineFunction(const llvm::Function *func) : func(func), c(0) {}
  AffineFunction(const llvm::Function *func, C c) : func(func), c(c) {}

  C constant() const { return c; }

  bool operator==(const AffineFunction &f) const { return func == f.func; }
  bool operator<(const AffineFunction &f) const { return func < f.func; }

  friend llvm::raw_ostream &operator<<(llvm::raw_ostream &OS,
                                       const AffineFunction &f) {
    return OS << f.func->getName();
  }
};

template <typename C> struct AffineChecker;

template <typename C>
struct AffineCheckingMap : Map<const llvm::Function *, std::optional<C>> {
  using constant = C;
  using base_type = Map<const llvm::Function *, std::optional<constant>>;
  using checker = AffineChecker<C>;
  using affine_func = typename checker::affine_func;

  using base_type::base_type;

  static bool isTaggedAffine(const llvm::Function *f) {
    return f->hasFnAttribute("affine");
  }

  void analyze(const llvm::Module &M) {
    for (const auto &f : M.getFunctionList()) {
      if (isTaggedAffine(&f) && !this->contains(&f)) {
        checker c(&f);
        auto res = c.analyze();
        if (!res) {
          maskscrape::elog("affine checker: not affine function `{0}`",
                           f.getName());
        }
        this->emplace(&f, res);
      }
    }
  }

  std::optional<affine_func> get_affine(const llvm::Function *func) {
    if (auto v = this->get(func)) {
      if (*v) {
        return affine_func{func, v->value()};
      }
    }

    return std::nullopt;
  }

  friend llvm::raw_ostream &operator<<(llvm::raw_ostream &OS,
                                       const AffineCheckingMap &AC) {
    for (const auto &[f, c] : AC) {
      OS << f->getName() << ": ";
      if (c) {
        OS << llvm::formatv("{0}(x + y) = {0}(x) + {0}(y) + {1}", f->getName(),
                            *c);
      } else {
        OS << "not a affine function";
      }
      OS << '\n';
    }

    return OS;
  }
};

template <typename T> inline AffineCheckingMap<T> GlobalAffineMap;

struct AffineException {};

template <typename C> struct AffineChecker : AnalyzerLog<AffineChecker<C>> {
  using constant = C;
  using affine_func = AffineFunction<constant>;
  using poly = affine_polynomial<Symbol, constant, affine_func>;

  const llvm::Function *func;

  AffineChecker(const llvm::Function *func) : func(func) {}

  auto getCurrentFunc() const { return func; }

  poly get_value(const llvm::Value *v) const {
    if (const auto *ins = llvm::dyn_cast<llvm::Instruction>(v)) {
      switch (ins->getOpcode()) {
      case llvm::Instruction::Xor:
        return get_value(ins->getOperand(0)) + get_value(ins->getOperand(1));

      case llvm::Instruction::Call: {
        const auto *call = llvm::cast<llvm::CallInst>(ins);
        const auto *callee = call->getCalledFunction();

        if (MultFn.is(callee)) {
          return get_value(call->getArgOperand(0)) *
                 get_value(call->getArgOperand(1));
        } else {
          std::optional<constant> res;
          if (auto v = GlobalAffineMap<constant>.get(callee)) {
            res = *v;
          } else {
            AffineChecker c(callee);
            res = c.analyze();
            GlobalAffineMap<constant>.emplace(callee, res);
          }

          if (res) {
            return typename poly::affine_type{
                affine_func{callee, *res}, get_value(call->getArgOperand(0))};
          } else {
            elog("affine checker: not affine function `{0}`", *call,
                 callee->getName());
          }
        }

        throw AffineException{};
        break;
      }

      case llvm::Instruction::ZExt:
      case llvm::Instruction::Trunc:
        return get_value(ins->getOperand(0));

      default:
        wlog("affine checker: invalid instruction type", *ins);
        throw AffineException{};
      }
    } else if (const auto *c = llvm::dyn_cast<llvm::Constant>(v)) {
      return {(unsigned char)c->getUniqueInteger().getZExtValue()};
    } else {
      return Symbol{v};
    }
  }

  poly get_ret() const {
    if (const auto *R =
            llvm::dyn_cast<llvm::ReturnInst>(&func->getEntryBlock().back())) {
      return get_value(R->getReturnValue());
    }

    elog("`ret` not found");
    throw AffineException{};
  }

  static auto new_sym(const Symbol &s) { return Symbol{s.val, s.offset + 1}; }

  std::optional<constant> analyze() const {
    if (func->empty()) {
      // no def -> is a affine function and constant is 0
      return 0;
    }

    poly v;
    try {
      v = get_ret();
    } catch (AffineException) {
      return std::nullopt;
    }

    poly u =
        v.substitute_normal([this](const Symbol &s) -> std::optional<Symbol> {
          for (const auto &arg : func->args()) {
            if (&arg == s.val) {
              return new_sym(s);
            }
          }

          return std::nullopt;
        });

    poly w =
        v.general_assign_normal([this](const Symbol &s) -> std::optional<poly> {
          for (const auto &arg : func->args()) {
            if (&arg == s.val) {
              return poly{s} + new_sym(s);
            }
          }

          return std::nullopt;
        });

    auto result = (u + v + w).rewrite();
    if (auto c = result.getConstant()) {
      return *c;
    } else {
      ilog("not a constant: {0}", result);
      return std::nullopt;
    }
  }
};

inline auto &Gf2AffineMap = GlobalAffineMap<gf2_int8>;

} // namespace maskscrape

#endif // MASKSCRAPE_AFFINE_CHECKER_H
