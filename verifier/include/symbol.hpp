#ifndef MASKSCRAPE_SYMBOL_H
#define MASKSCRAPE_SYMBOL_H

#include "llvm/ADT/SmallVector.h"
#include <llvm/IR/Value.h>
#include <llvm/Support/FormatProviders.h>

#include <context.hpp>
#include <vector>

namespace llvm {

inline llvm::raw_ostream &operator<<(llvm::raw_ostream &Stream,
                                     const llvm::Value *V) {
  if (V->hasName()) {
    return Stream << V->getName();
  } else {
    return Stream << "<" << (const void *)V << ">";
  }
}

template <> struct format_provider<const llvm::Value *> {
  static void format(const llvm::Value *V, raw_ostream &Stream, StringRef) {
    Stream << V;
  }
};

} // namespace llvm

namespace maskscrape {

struct Symbol {
  const llvm::Value *val;
  size_t offset;

  Symbol(const llvm::Value *val) : val(val), offset(0) {}
  Symbol(const llvm::Value *val, size_t offset) : val(val), offset(offset) {}

  friend auto operator<=>(const Symbol &x, const Symbol &y) {
    if (x.val == y.val) {
      return x.offset <=> y.offset;
    } else {
      return x.val <=> y.val;
    }
  }

  friend bool operator==(const Symbol &x, const Symbol &y) {
    return x.val == y.val && x.offset == y.offset;
  }

  auto valType() const { return val->getType(); }
};

inline llvm::raw_ostream &operator<<(llvm::raw_ostream &Stream,
                                     const Symbol &S) {
  Stream << S.val;

  if (S.offset == 0) {
    return Stream;
  } else {
    if (IsUnicode()) {
      return Stream << UnicodeNumSubscript(S.offset);
    } else {
      return Stream << "[" << S.offset << "]";
    }
  }
}

} // namespace maskscrape

#endif // MASKSCRAPE_SYMBOL_H
