#ifndef MASKSCRAPE_MULTIMAP_H
#define MASKSCRAPE_MULTIMAP_H

#include <map>

namespace maskscrape {

template <typename Iter> struct IterPair : std::pair<Iter, Iter> {

  using base_type = std::pair<Iter, Iter>;

  using base_type::base_type;

  decltype(auto) begin() { return this->first; }
  decltype(auto) end() { return this->second; }
};

template <typename K, typename T, typename C = std::less<K>>
struct MultiMap : std::multimap<K, T, C> {

  using base_type = std::multimap<K, T, C>;

  using base_type::base_type;

  template <typename U> IterPair<typename base_type::iterator> get(U &&k) {
    return this->equal_range(std::forward<U>(k));
  }

  template <typename U>
  IterPair<typename base_type::const_iterator> get(U &&k) const {
    return this->equal_range(std::forward<U>(k));
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_MULTIMAP_H
