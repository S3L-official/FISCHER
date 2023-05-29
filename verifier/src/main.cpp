#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Function.h"
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/MemoryBuffer.h>
#include <llvm/Support/SourceMgr.h>

#include "affine_checker.hpp"
#include "analyzer.hpp"
#include "annotation.hpp"
#include "ir_reader.hpp"
#include "log.hpp"
#include "poly_div.hpp"
#include "poly_parser.hpp"
#include "tao/pegtl/string_input.hpp"

#include <iostream>
#include <iterator>
#include <variant>

using namespace llvm;
using namespace maskscrape;

static cl::opt<std::string>
    InputFilename(cl::Positional, cl::init("-"),
                  cl::desc("filename of LLVM bytecode, default `-` for stdin"));

static cl::opt<std::string>
    InputFunctionName("function", cl::desc("function name expected to analyze"),
                      cl::value_desc("name"), cl::init("main"));

static cl::alias InputFunctionNameA("f", cl::aliasopt(InputFunctionName));

static cl::opt<std::string> LogLevel("log-level",
                                     cl::desc("verbose level for logging"),
                                     cl::init("info"));

static cl::alias LogLevelA("l", cl::aliasopt(LogLevel));

static cl::opt<std::string> PolyEval("poly-eval",
                                     cl::desc("input a polynomial to evaluate"),
                                     cl::Hidden);

static cl::alias PolyEvalA("p", cl::aliasopt(PolyEval));

static cl::list<std::string>
    PolyDiv("poly-div", cl::desc("input two polynomial to divide"), cl::Hidden);

static cl::alias PolyDivA("d", cl::aliasopt(PolyDiv));

static cl::opt<std::string>
    DumpSMT("dump-smt", cl::desc("dump SMT-LIB code to a specific path"),
            cl::init(""));

static cl::alias DumpSMTA("s", cl::aliasopt(DumpSMT));

static cl::opt<bool> SMTSubstSym(
    "smt-substitute-symbol",
    cl::desc(
        "substitute variable symbol to its value expression in SMT-LIB code"),
    cl::init(false), cl::Hidden);

static cl::opt<bool> SMTAfterRewrite(
    "smt-after-rewrite",
    cl::desc(
        "dump expressions that have been rewritten in SMT-LIB code"),
    cl::init(false), cl::Hidden);

static cl::opt<bool>
    AffineOnly("affine-only",
               cl::desc("run affine transformation checking only"),
               cl::init(false), cl::Hidden);

struct RetCode {
  enum : int {
    SAT = 0,
    SUCCESS = 0,
    INPUT_ERROR,
    UNSAT,
    ANAL_FAIL,
  };
};

int init_log(StringRef level) {
  Logger::Level L = Logger::LevelFromString(level);
  if (L == (unsigned char)-1) {
    elog("no such logging level: {0}", level);
    return RetCode::INPUT_ERROR;
  }

  log_level(L);
  return RetCode::SUCCESS;
}

int eval_poly(StringRef expr) {
  if (auto r = parse_poly(peg::string_input(expr, ""))) {
    elog("{0}", *r);
    return RetCode::SUCCESS;
  } else {
    elog("failed to parse the polynomial expression `{0}`", expr);
    return RetCode::INPUT_ERROR;
  }
}

int div_poly(StringRef l, StringRef r) {
  auto lp = parse_poly(peg::string_input(l, ""));
  auto rp = parse_poly(peg::string_input(r, ""));

  if (lp && rp) {
    elog("{0} / {1}", *lp, *rp);
    auto res = polyDiv(*lp, *rp);
    elog("q = {0}, r = {1}", res.quotient, res.remainder);

    return RetCode::SUCCESS;
  } else {
    elog("failed to parse the polynomial expression `{0}` or `{1}`", l, r);
    return RetCode::INPUT_ERROR;
  }
}

int analyze(const Module &mod, const Function *func) {
  AnnotationManager anno(mod);
  anno.InsertToFnAttrs();

  Gf2AffineMap.analyze(mod);
  dlog("affine functions:\n{0}", Gf2AffineMap);

  if (func) {
    Analyzer anal(func);

    bool res = anal.analyze();

    dlog("analyzer internals:\n{0}", anal);
    elog("{0}", res ? "sat" : "unsat");

    if (!DumpSMT.empty()) {
      std::error_code ec;
      llvm::raw_fd_ostream smtFile(DumpSMT, ec);

      if (ec) {
        elog("error occurred while dumping SMT file: {0}", ec.message());
      } else {
        Analyzer::SMTDumpConfig config = Analyzer::SMTDumpConfig::normal;
        if(SMTAfterRewrite) {
          config = Analyzer::SMTDumpConfig::afterRewrite;
        } else if (SMTSubstSym) {
          config = Analyzer::SMTDumpConfig::substituteSymbol;
        }

        anal.dumpSMT(smtFile, config);
        ilog("SMT code dumped to {0}", DumpSMT);
      }
    }

    return res ? RetCode::SAT : RetCode::UNSAT;
  }

  return RetCode::SAT;
}

int main(int argc, char *argv[]) {
  cl::ParseCommandLineOptions(argc, argv);

  if (int code = init_log(LogLevel); code != RetCode::SUCCESS) {
    return code;
  }

  if (PolyEval.getNumOccurrences() != 0) {
    return eval_poly(PolyEval);
  }

  if (PolyDiv.getNumOccurrences() != 0) {
    if (PolyDiv.size() >= 2) {
      return div_poly(PolyDiv[0], PolyDiv[1]);
    } else {
      elog("expected at least two expression, got {0}", PolyDiv.size());
      return RetCode::INPUT_ERROR;
    }
  }

  IRReader reader(std::cin);

  std::optional<const llvm::Function *> res;
  if (!AffineOnly) {
    ilog("analyze function `{0}` in {1}", InputFunctionName,
         IsStdinDash(InputFilename) ? "stdin" : InputFilename.c_str());

    res = reader.read(InputFilename, InputFunctionName);
  } else {
    res = reader.read(InputFilename, "");
  }
  if (!res) {
    return RetCode::INPUT_ERROR;
  }

  return analyze(*reader.mod, *res);
}
