#ifndef MASKSCRAPE_AFFINE_POLY_H
#define MASKSCRAPE_AFFINE_POLY_H

#include "polynomial.hpp"
#include "llvm/Support/raw_ostream.h"
#include <optional>
#include <variant>

namespace maskscrape {

template <typename V, typename C, typename F, typename O>
struct affine_func_symbol;

template <typename V, typename C, typename F, typename O>
struct affine_poly_symbol;

template <typename V, typename C, typename F, typename O = std::size_t>
struct affine_polynomial : polynomial<affine_poly_symbol<V, C, F, O>, C, O> {
  using symbol_type = affine_poly_symbol<V, C, F, O>;
  using base_type = polynomial<affine_poly_symbol<V, C, F, O>, C, O>;

  using normal_type = V;
  using affine_type = affine_func_symbol<V, C, F, O>;

  using base_type::base_type;

  affine_polynomial(const base_type &p) : base_type(p.data) {}
  affine_polynomial(base_type &&p) : base_type(std::move(p.data)) {}

  affine_polynomial(const normal_type &v) : base_type(v) {}
  affine_polynomial(normal_type &&v) : base_type(std::move(v)) {}

  affine_polynomial(const affine_type &v) : base_type(v) {}
  affine_polynomial(affine_type &&v) : base_type(std::move(v)) {}

  affine_polynomial rewrite() const {
    return this->general_assign(
        [](const symbol_type &s) -> std::optional<affine_polynomial> {
          if (s.is_affine()) {
            affine_type v{s.affine().func, s.affine().inside.rewrite()};
            return v.rewrite();
          }
          return std::nullopt;
        });
  }

  bool is_rewrited() const {
    bool result = true;

    iterate_affine([&result](const auto &affine) {
      if (affine.inside.size > 1 || !affine.inside.is_rewrited())
        result = false;
    });

    return result;
  }

  bool is_totally_normal() const {
    bool result = true;

    iterate_affine([&result] { result = false; });

    return result;
  }

  template <typename G> void iterate_affine(G &&f) const {
    for (const auto &[i, k] : this->data) {
      for (const auto &[v, n] : this->monomial_alloc_table[i]) {
        if (v.is_affine()) {
          std::forward<G>(f)(v.affine());
        }
      }
    }
  }

  affine_polynomial operator+(const affine_polynomial &y) const {
    return static_cast<const base_type &>(*this) +
           static_cast<const base_type &>(y);
  }

  affine_polynomial operator*(const affine_polynomial &y) const {
    return static_cast<const base_type &>(*this) *
           static_cast<const base_type &>(y);
  }

  affine_polynomial &operator+=(const affine_polynomial &y) {
    static_cast<base_type &>(*this) += static_cast<const base_type &>(y);

    return *this;
  }

  affine_polynomial &operator*=(const affine_polynomial &y) {
    static_cast<base_type &>(*this) *= static_cast<const base_type &>(y);

    return *this;
  }

  template <typename G> affine_polynomial substitute_normal(G &&f) const {
    return this->substitute(
        [&f](const symbol_type &v) -> std::optional<symbol_type> {
          if (v.is_affine()) {
            return affine_type{
                v.affine().func,
                v.affine().inside.substitute_normal(std::forward<G>(f))};
          } else {
            return std::forward<G>(f)(v.normal());
          }
        });
  }

  template <typename G> affine_polynomial general_assign_normal(G &&f) const {
    return this->general_assign(
        [&f](const symbol_type &v) -> std::optional<affine_polynomial> {
          if (v.is_affine()) {
            return affine_type{
                v.affine().func,
                v.affine().inside.general_assign_normal(std::forward<G>(f))};
          } else {
            return std::forward<G>(f)(v.normal());
          }
        });
  }
};

template <typename V, typename C, typename F, typename O = std::size_t>
struct affine_poly_symbol : std::variant<V, affine_func_symbol<V, C, F, O>> {
  using base_type = std::variant<V, affine_func_symbol<V, C, F, O>>;
  using normal_type = V;
  using affine_type = affine_func_symbol<V, C, F, O>;

  using base_type::base_type;

  bool is_normal() const { return this->index() == 0; }

  bool is_affine() const { return this->index() == 1; }

  decltype(auto) normal() const { return std::get<normal_type>(*this); }
  decltype(auto) normal() { return std::get<normal_type>(*this); }

  decltype(auto) affine() const { return std::get<affine_type>(*this); }
  decltype(auto) affine() { return std::get<affine_type>(*this); }

  friend llvm::raw_ostream &operator<<(llvm::raw_ostream &OS,
                                       const affine_poly_symbol &S) {
    if (S.is_normal()) {
      return OS << S.normal();
    } else {
      return OS << S.affine();
    }
  }
};

template <typename V, typename C, typename F, typename O = std::size_t>
struct affine_func_symbol {
  using poly = affine_polynomial<V, C, F, O>;

  F func;
  poly inside;

  bool operator==(const affine_func_symbol &s) const {
    return func == s.func && inside == s.inside;
  }

  bool operator<(const affine_func_symbol &s) const {
    if (func == s.func) {
      return inside < s.inside;
    }

    return func < s.func;
  }

  poly rewrite() const {
    if (inside.data.size() == 1) {
      return *this;
    }

    if (inside.data.size() == 0) {
      return func.constant();
    }

    poly result;

    for (const auto &[i, n] : inside.data) {
      result += affine_func_symbol{
          func, typename poly::monomial_with_coefficient(i, n)};
    }

    if (inside.data.size() % 2 == 0) {
      result += func.constant();
    }

    return result;
  }

  friend llvm::raw_ostream &operator<<(llvm::raw_ostream &OS,
                                       const affine_func_symbol &S) {
    return OS << S.func << '(' << S.inside << ')';
  }
};

template <typename T> constexpr inline bool is_affine_poly = false;

template <typename... Ts>
constexpr inline bool is_affine_poly<affine_polynomial<Ts...>> = true;

} // namespace maskscrape

#endif // MASKSCRAPE_AFFINE_POLY_H
