#ifndef MASKSCRAPE_MAP_H
#define MASKSCRAPE_MAP_H

#include <map>

namespace maskscrape {

template <typename K, typename T, typename C = std::less<K>>
struct Map : std::map<K, T, C> {
  using base_type = std::map<K, T, C>;

  using base_type::base_type;

  struct ConstIter : private base_type::const_iterator {
    const Map &self;

    using base_iter = typename base_type::const_iterator;

    ConstIter(const base_iter &it, const Map &self)
        : base_iter(it), self(self) {}

    operator bool() const {
      return static_cast<const base_iter &>(*this) != self.end();
    }

    const auto &key() const {
      return static_cast<const base_iter &>(*this)->first;
    }

    const auto &operator*() const {
      return static_cast<const base_iter &>(*this)->second;
    }

    const auto *operator->() const { return &operator*(); }

    base_iter base() const { return static_cast<const base_iter &>(*this); }
  };

  struct Iter : private base_type::iterator {
    const Map &self;

    using base_iter = typename base_type::iterator;

    Iter(const base_iter &it, const Map &self) : base_iter(it), self(self) {}

    operator bool() const {
      return static_cast<const base_iter &>(*this) != self.end();
    }

    auto &key() const { return static_cast<const base_iter &>(*this)->first; }

    auto &operator*() const {
      return static_cast<const base_iter &>(*this)->second;
    }

    auto *operator->() const { return &operator*(); }

    base_iter base() const { return static_cast<const base_iter &>(*this); }
  };

  template <typename U> Iter get(U &&k) {
    return {this->find(std::forward<U>(k)), *this};
  }

  template <typename U> ConstIter get(U &&k) const {
    return {this->find(std::forward<U>(k)), *this};
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_MAP_H
