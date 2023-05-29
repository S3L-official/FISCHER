#ifndef MASKSCRAPE_SYMBOL_MAP_H
#define MASKSCRAPE_SYMBOL_MAP_H

#include "alias_map.hpp"
#include "llvm/ADT/APInt.h"
#include "llvm/IR/Constants.h"
#include <llvm/IR/Constant.h>
#include <llvm/IR/Value.h>

#include <map.hpp>
#include <optional>
#include <symbol.hpp>

namespace maskscrape {

template <typename Poly> struct SymbolMap : Map<Symbol, Poly> {

  auto updateSymbol(const Symbol &target, const Poly &p) {
    if (auto iter = this->get(target)) {
      *iter = p;
      return std::make_pair(iter.base(), false);
    } else {
      return this->emplace(target, p);
    }
  }

  auto copySymbol(const Symbol &val, const Symbol &from) {
    return this->emplace(val, getOrSelf(from));
  }

  std::optional<Poly> getPolyFromValue(const llvm::Value *v,
                                       const AliasMap &alias) const {
    if (auto constant = dyn_cast<llvm::Constant>(v);
        constant && !isa<llvm::UndefValue>(constant)) {
      return Poly(constant->getUniqueInteger().getZExtValue());
    } else if (auto iter = this->get(alias.dealias(v))) {
      return *iter;
    } else {
      return std::nullopt;
    }
  }

  Poly getOrSelf(const Symbol &val) {
    if (auto iter = this->get(val)) {
      return *iter;
    } else {
      return Poly{val};
    }
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_SYMBOL_MAP_H
