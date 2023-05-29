#ifndef MASKSCRAPE_BUILTIN_H
#define MASKSCRAPE_BUILTIN_H

#include <llvm/IR/Function.h>

namespace maskscrape {

struct BuiltinFunction {
  llvm::StringRef name;

  BuiltinFunction(llvm::StringRef name) : name(name) {}

  bool is(const llvm::Function *func) const { return name == func->getName(); }

  bool operator==(const llvm::Function *func) const { return is(func); }

  bool operator==(const BuiltinFunction &f) const { return name == f.name; }

  bool operator<(const BuiltinFunction &f) const { return name < f.name; }
};

const BuiltinFunction MultFn("mult"), RandFn("rand"), AssumeFn("assume"),
    AssertFn("assert");

template <typename Con, typename F>
void invokeBuiltin(
    Con &&container, const llvm::Function *funcToFind,
    F &&defaultFunc = [](auto &&) {}) {
  if (auto iter = std::forward<Con>(container).find(funcToFind);
      iter != std::forward<Con>(container).end()) {
    iter->second(funcToFind);
  }

  std::forward<F>(defaultFunc)(funcToFind);
}

} // namespace maskscrape

#endif // MASKSCRAPE_BUILTIN_H
