#ifndef MASKSCRAPE_ALIAS_MAP_H
#define MASKSCRAPE_ALIAS_MAP_H

#include <map.hpp>
#include <symbol.hpp>

namespace maskscrape {

struct AliasMap : Map<Symbol, Symbol> {

  const Symbol &dealias(const Symbol &v) const {
    if (auto iter = get(v)) {
      return *iter;
    }

    return v;
  }

  auto makeAlias(const Symbol &alias, const Symbol &sym) {
    return emplace(alias, sym);
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_ALIAS_MAP_H
