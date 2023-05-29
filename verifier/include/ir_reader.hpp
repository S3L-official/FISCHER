#ifndef MASKSCRAPE_IR_READER_H
#define MASKSCRAPE_IR_READER_H

#include "log.hpp"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/SourceMgr.h"
#include <llvm/IRReader/IRReader.h>

#include <iostream>
#include <optional>

namespace maskscrape {

inline bool IsStdinDash(llvm::StringRef S) { return S == "-"; }

struct IRReader {
  std::istream &in;

  llvm::LLVMContext ctx;
  llvm::SMDiagnostic diag;

  std::unique_ptr<llvm::Module> mod;

  IRReader(std::istream &in) : in(in) {}

  void parse(llvm::StringRef InputFilename) {
    if (IsStdinDash(InputFilename)) {
      std::string input(std::istreambuf_iterator<char>(in), {});
      auto buf = llvm::MemoryBuffer::getMemBuffer(input);
      mod = llvm::parseIR(*buf, diag, ctx);
    }

    mod = parseIRFile(InputFilename, diag, ctx);
  }

  std::optional<const llvm::Function *>
  read(llvm::StringRef InputFilename, llvm::StringRef InputFunctionName) {
    parse(InputFilename);

    if (auto msg = diag.getMessage(); !msg.empty()) {
      elog("error occured while parsing LLVM bytecode `{0}`: {1}",
           InputFilename, msg);
      return std::nullopt;
    }

    if (!InputFunctionName.empty()) {
      auto func = mod->getFunction(InputFunctionName);
      if (!func) {
        elog("function `{0}` cannot be found", InputFunctionName);
        return std::nullopt;
      }

      return func;
    } else {
      return nullptr;
    }
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_IR_READER_H
