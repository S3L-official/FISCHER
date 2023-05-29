#ifndef MASKSCRAPE_POLYNOMIAL_H
#define MASKSCRAPE_POLYNOMIAL_H

#include "context.hpp"
#include <cstddef>
#include <deque>
#include <map>
#include <optional>
#include <unordered_map>
#include <vector>

#include <llvm/Support/FormatProviders.h>

namespace maskscrape {

template <typename C> struct numeric_traits;

template <> struct numeric_traits<int> {
  static constexpr inline int zero = 0; // addition identity
  static constexpr inline int one = 1;  // multiplication identity
};

template <typename V, typename C, typename O = std::size_t> struct polynomial {
  using variable_type = V;
  using constant_type = C;
  using order_type = O;

  using ordered_variable = std::pair<const variable_type, order_type>;
  using monomial_type = std::map<variable_type, order_type>;

  using monomial_with_coefficient = std::pair<size_t, constant_type>;

  static inline std::vector<monomial_type> monomial_alloc_table = {
      monomial_type{} // constant monomial
  };
  static inline std::map<monomial_type, std::size_t> monomial_index_table = {
      {monomial_type{}, 0} // constant monomial at 0
  };

  std::map<std::size_t, constant_type> data;

  static std::size_t get_monomial_index(const monomial_type &monomial) {
    if (auto iter = monomial_index_table.find(monomial);
        iter != monomial_index_table.end()) {
      return iter->second;
    } else {
      auto index = monomial_alloc_table.size();

      monomial_alloc_table.push_back(monomial);
      monomial_index_table.emplace(monomial, index);

      return index;
    }
  }

  static std::size_t get_monomial_index(monomial_type &&monomial) {
    if (auto iter = monomial_index_table.find(monomial);
        iter != monomial_index_table.end()) {
      return iter->second;
    } else {
      auto index = monomial_alloc_table.size();

      monomial_alloc_table.push_back(monomial);
      monomial_index_table.emplace(std::move(monomial), index);

      return index;
    }
  }

  void insert_constant(const constant_type &constant) {
    if (constant != 0) {
      data.insert_or_assign(0, constant);
    }
  }

  void insert_monomial(const monomial_type &monomial,
                       const constant_type &constant) {
    if (constant != 0) {
      monomial_type m = monomial;

      for (auto it = m.begin(); it != m.end();) {
        if (it->second == 0)
          it = m.erase(it);
        else
          ++it;
      }

      auto index = get_monomial_index(std::move(m));

      data.insert_or_assign(index, constant);
    }
  }

  // zero polynomial
  polynomial() {}

  // constant polynomial
  polynomial(const constant_type &constant) { insert_constant(constant); }

  // monomial
  polynomial(std::initializer_list<ordered_variable> init_list,
             const C &constant = 1) {
    insert_monomial(monomial_type(init_list), constant);
  }

  polynomial(const monomial_with_coefficient &m) { data.emplace(m); }

  // variable init
  polynomial(const variable_type &var) : polynomial{{var, 1}} {}

  polynomial(const polynomial &p) : data(p.data) {}
  polynomial(polynomial &&p) : data(std::move(p.data)) {}

  polynomial(const std::map<std::size_t, constant_type> &data) : data(data) {}
  polynomial(std::map<std::size_t, constant_type> &&data) : data(std::move(data)) {}

  polynomial &operator=(const polynomial &p) {
    data = p.data;
    return *this;
  }
  polynomial &operator=(polynomial &&p) {
    data = std::move(p.data);
    return *this;
  }

  polynomial &operator+=(const polynomial &y) {
    auto &x = *this;
    for (const auto &i : y.data) {
      if (auto iter = x.data.find(i.first); iter != x.data.end()) {
        iter->second += i.second;

        if (iter->second == 0) {
          x.data.erase(iter);
        }
      } else {
        x.data.insert(i);
      }
    }

    return x;
  }

  auto operator+(const polynomial &y) const {
    polynomial result(*this);

    return result += y;
  }

  static auto monomial_merge(const monomial_type &lhs,
                             const monomial_type &rhs) {
    monomial_type result(lhs);

    for (const auto &i : rhs) {
      if (auto iter = result.find(i.first); iter != result.end()) {
        iter->second += i.second;
      } else {
        result.insert(i);
      }
    }

    return result;
  }

  auto operator*(const polynomial &y) const {
    const auto &x = *this;
    polynomial result;

    for (const auto &i : x.data) {
      for (const auto &j : y.data) {
        auto monomial = monomial_merge(monomial_alloc_table[i.first],
                                       monomial_alloc_table[j.first]);
        auto constant = i.second * j.second;
        auto index = get_monomial_index(std::move(monomial));

        if (auto iter = result.data.find(index); iter != result.data.end()) {
          iter->second += constant;

          if (iter->second == 0) {
            result.data.erase(iter);
          }
        } else {
          result.data.emplace(index, constant);
        }
      }
    }

    return result;
  }

  polynomial &operator*=(const polynomial &y) { return *this = *this * y; }

  polynomial power(order_type n) const {
    if (n == 0)
      return constant_type(1);
    auto res = power(n / 2);
    if (n % 2)
      return res * res * *this;
    else
      return res * res;
  }

  friend bool operator==(const polynomial &x, const polynomial &y) {
    return x.data == y.data;
  }

  static inline const polynomial zero{};

  bool isZero() const { return data.empty(); }

  std::optional<constant_type> getConstant() const {
    if (isZero()) {
      return 0;
    }

    if (data.size() == 1 && data.begin()->first == 0) {
      return data.begin()->second;
    }

    return std::nullopt;
  }

  std::optional<variable_type> getVariable() const {
    if (data.size() == 1 && data.begin()->second == 1) {
      const auto &mono = monomial_alloc_table[data.begin()->first];

      if (mono.size() == 1 && mono.begin()->second == 1) {
        return mono.begin()->first;
      }
    }

    return std::nullopt;
  }

  // F: const V& -> std::optional<V>
  template <typename F> auto substitute(F &&f) const {
    polynomial result;

    for (const auto &[i, k] : data) {
      monomial_type m;

      // need to take a monomial copy here if it is vector
      for (const auto &[v, n] : monomial_type(monomial_alloc_table[i])) {
        if (auto opt = std::forward<F>(f)(v)) {
          m[opt.value()] += n;
        } else {
          m[v] += n;
        }
      }

      result.data[get_monomial_index(std::move(m))] += k;
    }

    return result;
  }

  // F: const V& -> std::optional<polynomial>
  template <typename F> auto general_assign(F &&f) const {
    polynomial result;

    for (const auto &[i, k] : data) {
      polynomial p{k};

      // copy to avoid iterator dangling
      for (const auto &[v, n] : monomial_type{monomial_alloc_table[i]}) {
        if (auto opt = std::forward<F>(f)(v)) {
          p *= opt.value().power(n);
        } else {
          p *= polynomial{{v, n}};
        }
      }

      result += p;
    }

    return result;
  }

  // returns term a < b
  static bool term_order(const monomial_with_coefficient &a,
                         const monomial_with_coefficient &b) {
    const auto &am = monomial_alloc_table[a.first];
    const auto &bm = monomial_alloc_table[b.first];

    auto ai = am.rbegin(), bi = bm.rbegin();
    for (; ai != am.rend() && bi != bm.rend(); ++ai, ++bi) {
      if (ai->first < bi->first) {
        return true;
      }
      if (bi->first < ai->first) {
        return false;
      }
      if (ai->second < bi->second) {
        return true;
      }
      if (ai->second > bi->second) {
        return false;
      }
    }

    if (ai == am.rend() && bi != bm.rend())
      return true;
    if (ai != am.rend() && bi == bm.rend())
      return false;

    return a.second < b.second;
  }

  static auto term_to_poly(const monomial_with_coefficient &x) {
    return polynomial(x);
  }

  auto lead_term() const {
    bool first = true;
    monomial_with_coefficient max;

    for (const auto &[i, k] : data) {
      if (first) {
        max = {i, k};
        first = false;
      } else {
        monomial_with_coefficient other{i, k};
        if (term_order(max, other)) {
          max = std::move(other);
        }
      }
    }

    return max;
  }

  static std::optional<monomial_with_coefficient>
  term_div(const monomial_with_coefficient &a,
           const monomial_with_coefficient &b) {
    monomial_type result(monomial_alloc_table[a.first]);

    for (const auto &[v, n] : monomial_alloc_table[b.first]) {
      if (auto iter = result.find(v); iter != result.end()) {
        if (auto m = iter->second - n; m > 0) {
          iter->second = m;
        } else if (m == 0) {
          result.erase(iter);
        } else {
          return std::nullopt;
        }
      } else {
        return std::nullopt;
      }
    }

    return monomial_with_coefficient{get_monomial_index(std::move(result)),
                                     a.second / b.second};
  }

  static auto order(const polynomial &a, const polynomial &b) {
    return a.data < b.data;
  }

  bool operator<(const polynomial &p) const { return data < p.data; }
};

template <typename V, typename C, typename O>
inline llvm::raw_ostream &
operator<<(llvm::raw_ostream &Stream,
           const maskscrape::polynomial<V, C, O> &Poly) {
  if (Poly.data.empty())
    Stream << "0";

  bool is_first = true;

  for (const auto &i : Poly.data) {
    if (is_first) {
      is_first = false;
    } else {
      Stream << " + ";
    }

    if (i.first == 0 || i.second != 1) {
      Stream << i.second;
    }

    for (const auto &j : Poly.monomial_alloc_table[i.first]) {
      if (j.second != 1) {
        if (IsUnicode()) {
          Stream << j.first << UnicodeNumSuperscript(j.second);
        } else {
          Stream << "(" << j.first << "^" << j.second << ")";
        }
      } else {
        Stream << j.first;
      }
    }
  }

  return Stream;
}

} // namespace maskscrape

#endif // MASKSCRAPE_POLYNOMIAL_H
