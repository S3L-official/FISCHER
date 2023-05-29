#ifndef MASKSCRAPE_ANALOG_H
#define MASKSCRAPE_ANALOG_H

#include "log.hpp"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include <concepts>
#include <type_traits>

namespace maskscrape {

template <typename T> struct AnalyzerLog : LoggerMethod<AnalyzerLog<T>> {

  const llvm::Function *getCurrentFunc() const {
    return static_cast<const T *>(this)->getCurrentFunc();
  }

  template <std::derived_from<llvm::Instruction> Inst, typename... Ts>
  void log(Logger::Level L, StringRefWithSourceLocation Fmt, const Inst &Ins,
           Ts &&...Args) const {
    maskscrape::log(L, {"{0}", Fmt.loc},
                    llvm::formatv("[{0}]{1}: {2}", getCurrentFunc()->getName(),
                                  Ins,
                                  llvm::formatv(Fmt.str.data(),
                                                std::forward<Ts>(Args)...)));
  }

  template <typename... Ts>
  void log(Logger::Level L, StringRefWithSourceLocation Fmt,
           Ts &&...Args) const {
    maskscrape::log(L, {"{0}", Fmt.loc},
                    llvm::formatv("[{0}]  {1}", getCurrentFunc()->getName(),
                                  llvm::formatv(Fmt.str.data(),
                                                std::forward<Ts>(Args)...)));
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_ANALOG_H
