#ifndef MASKSCRAPE_EXPR_H
#define MASKSCRAPE_EXPR_H

#include "affine_poly.hpp"
#include "symbol.hpp"
#include "assert.hpp"
#include "llvm/Support/Casting.h"
#include "llvm/Support/FormatVariadic.h"
#include <boost/smart_ptr/local_shared_ptr.hpp>
#include <concepts>
#include <memory>

#include <llvm/Support/ExtensibleRTTI.h>
#include <optional>

namespace maskscrape {

template <typename V, typename C, typename F> struct exprs {

  using variable = V;
  using constant = C;
  using unary_func = F;

  template <typename T> using ptr = boost::local_shared_ptr<T>;

  struct Expr;
  using expr_ptr = ptr<Expr>;

  exprs() = delete;

  struct Expr : llvm::RTTIExtends<Expr, llvm::RTTIRoot> {
    static inline char ID = 0;

    virtual expr_ptr clone() const = 0;

    virtual ~Expr() = default;
  };

  template <std::derived_from<Expr> T, typename... Ts>
  static auto New(Ts &&...v) {
    return expr_ptr(new T{std::forward<Ts>(v)...});
  }

  struct Variable : llvm::RTTIExtends<Variable, Expr> {
    static inline char ID = 0;

    using Base = Expr;

    V var;

    Variable(const V &v) : var(v) {}

    expr_ptr clone() const override { return New<Variable>(var); }
  };

  struct Constant : llvm::RTTIExtends<Constant, Expr> {
    static inline char ID = 0;

    using Base = Expr;

    C val;

    Constant(const C &c) : val(c) {}

    expr_ptr clone() const override { return New<Constant>(val); }
  };

  struct BinExpr : llvm::RTTIExtends<BinExpr, Expr> {
    static inline char ID = 0;

    using Base = Expr;

    expr_ptr lhs;
    expr_ptr rhs;

    BinExpr(expr_ptr lhs, expr_ptr rhs)
        : lhs(std::move(lhs)), rhs(std::move(rhs)) {}

    expr_ptr clone() const override = 0;
  };

  struct AddExpr : llvm::RTTIExtends<AddExpr, BinExpr> {
    static inline char ID = 0;

    using Base = BinExpr;

    AddExpr(expr_ptr lhs, expr_ptr rhs)
        : llvm::RTTIExtends<AddExpr, BinExpr>(std::move(lhs), std::move(rhs)) {}

    expr_ptr clone() const override {
      return New<AddExpr>(this->lhs->clone(), this->rhs->clone());
    }
  };

  struct MulExpr : llvm::RTTIExtends<MulExpr, BinExpr> {
    static inline char ID = 0;

    using Base = BinExpr;

    MulExpr(expr_ptr lhs, expr_ptr rhs)
        : llvm::RTTIExtends<MulExpr, BinExpr>(std::move(lhs), std::move(rhs)) {}

    expr_ptr clone() const override {
      return New<MulExpr>(this->lhs->clone(), this->rhs->clone());
    }
  };

  struct UnaryExpr : llvm::RTTIExtends<UnaryExpr, Expr> {
    static inline char ID = 0;

    using Base = Expr;

    expr_ptr expr;

    UnaryExpr(expr_ptr v) : expr(std::move(v)) {}

    expr_ptr clone() const override = 0;
  };

  struct AffineExpr : llvm::RTTIExtends<AffineExpr, UnaryExpr> {
    static inline char ID = 0;

    using Base = UnaryExpr;

    F f;

    AffineExpr(const F &f, expr_ptr ptr)
        : f(f), llvm::RTTIExtends<AffineExpr, UnaryExpr>(std::move(ptr)) {}

    expr_ptr clone() const override {
      return New<AffineExpr>(f, this->expr->clone());
    };
  };

  template <typename T, typename U> static auto DynCast(const ptr<U> &p) {
    return llvm::isa<T>(p.get()) ? boost::static_pointer_cast<T>(p) : nullptr;
  }

  template <typename T, typename U> static auto DynCast(ptr<U> &&p) {
    return llvm::isa<T>(p.get()) ? boost::static_pointer_cast<T>(std::move(p))
                                 : nullptr;
  }

  struct visitor {
    template <typename G>
    static expr_ptr visit_impl(const ptr<AddExpr> &expr, G &&f) {
      auto l = std::forward<G>(f)(expr->lhs);
      auto r = std::forward<G>(f)(expr->rhs);

      if (l == expr->lhs && r == expr->rhs) {
        return expr;
      } else {
        return New<AddExpr>(l, r);
      }
    }

    template <typename G>
    static expr_ptr visit_impl(const ptr<MulExpr> &expr, G &&f) {
      auto l = std::forward<G>(f)(expr->lhs);
      auto r = std::forward<G>(f)(expr->rhs);

      if (l == expr->lhs && r == expr->rhs) {
        return expr;
      } else {
        return New<MulExpr>(l, r);
      }
    }

    template <typename G>
    static expr_ptr visit_impl(const ptr<AffineExpr> &expr, G &&f) {
      auto v = std::forward<G>(f)(expr->expr);

      if (v == expr->expr) {
        return expr;
      } else {
        return New<AffineExpr>(expr->f, v);
      }
    }
  };

  struct value : expr_ptr {
    using Poly = affine_polynomial<V, C, F>;

    template <typename... Ts> static auto make_poly(Ts &&...args) {
      return ptr<Poly>(new Poly(std::forward<Ts>(args)...));
    }

    value(const V &v) : expr_ptr(New<Variable>(v)), p(make_poly<Poly>(v)) {}
    value(const C &c) : expr_ptr(New<Constant>(c)), p(make_poly<Poly>(c)) {}

    ptr<Poly> p;

    template <std::derived_from<Expr> T>
    value(ptr<T> ptr) : expr_ptr(std::move(ptr)) {}

    value(expr_ptr ptr_, ptr<Poly> p)
        : expr_ptr(std::move(ptr_)), p(std::move(p)) {}

    value operator+(const value &other) const {
      if (p && other.p)
        return {New<AddExpr>(*this, other), make_poly(*p + *other.p)};
      return {New<AddExpr>(*this, other)};
    }

    value &operator+=(const value &other) {
      if (p && other.p)
        p = make_poly(*p + *other.p);
      return *this = *this + other;
    }

    value operator*(const value &other) const {
      if (p && other.p)
        return {New<MulExpr>(*this, other), make_poly(*p * *other.p)};
      return {New<MulExpr>(*this, other)};
    }

    value &operator*=(const value &other) {
      if (p && other.p)
        p = make_poly(*p * *other.p);
      return *this = *this * other;
    }

    value affine(const F &f) const {
      if (p)
        return {New<AffineExpr>(f, *this),
                make_poly(typename Poly::affine_type{f, *p})};
      return {New<AffineExpr>(f, *this)};
    }

    value &affine_self(const F &f) {
      if (p)
        p = make_poly(typename Poly::affine_type{f, *p});
      return *this = this->affine(f);
    }

    // G(V) -> optional<value>
    template <typename G> value general_assign(G &&f) const {
      if (auto expr = DynCast<Variable>(*this)) {
        if (auto res = std::forward<G>(f)(expr->var)) {
          return *res;
        } else {
          return expr;
        }
      } else if (auto expr = DynCast<AddExpr>(*this)) {
        return visitor::visit_impl(expr, [&f](const auto &v) {
          return value(v).general_assign(std::forward<G>(f));
        });
      } else if (auto expr = DynCast<MulExpr>(*this)) {
        return visitor::visit_impl(expr, [&f](const auto &v) {
          return value(v).general_assign(std::forward<G>(f));
        });
      } else if (auto expr = DynCast<AffineExpr>(*this)) {
        return visitor::visit_impl(expr, [&f](const auto &v) {
          return value(v).general_assign(std::forward<G>(f));
        });
      } else {
        return *this;
      }
    }

    // G(V) -> optional<V>
    template <typename G> value substitute(G &&f) const {
      return general_assign([&f](const auto &v) -> std::optional<value> {
        if (auto opt = std::forward<G>(f)(v)) {
          return New<Variable>(*opt);
        } else {
          return std::nullopt;
        }
      });
    }

    const Poly &get_poly() const {
      alog(p);
      return *p;
    }

    struct to_poly_impl {
      std::map<Expr *, Poly> cache;

      Poly to_poly(const value &v) {
        if (auto iter = cache.find(v.get()); iter != cache.end()) {
          return iter->second;
        }

        if (auto expr = DynCast<Variable>(v)) {
          return cache[v.get()] = expr->var;
        } else if (auto expr = DynCast<AddExpr>(v)) {
          return cache[v.get()] = to_poly(expr->lhs) + to_poly(expr->rhs);
        } else if (auto expr = DynCast<MulExpr>(v)) {
          return cache[v.get()] = to_poly(expr->lhs) * to_poly(expr->rhs);
        } else if (auto expr = DynCast<AffineExpr>(v)) {
          return cache[v.get()] =
                     typename Poly::affine_type{expr->f, to_poly(expr->expr)};
        } else if (auto expr = DynCast<Constant>(v)) {
          return cache[v.get()] = expr->val;
        } else {
          abort();
        }
      }
    };

    Poly to_poly() const { return to_poly_impl{}.to_poly(*this); }

    static value from_poly(const Poly &v) {
      value res(C{0});
      bool first = true;

      for (const auto &[i, k] : v.data) {
        bool inner_first = true;
        value mono(k);

        for (const auto &[v, n] : typename Poly::monomial_type(Poly::monomial_alloc_table[i])) {
          for (size_t i = 0; i < n; ++i) {
            if (inner_first && k == 1) {
              if (v.is_normal()) {
                mono = v.normal();
              } else {
                mono = from_poly(v.affine().inside).affine(v.affine().func);
              }
              inner_first = false;
            } else {
              if (v.is_normal()) {
                mono *= v.normal();
              } else {
                mono *= from_poly(v.affine().inside).affine(v.affine().func);
              }
            }
          }
        }
        if (first) {
          first = false;
          res = mono;
        } else {
          res += mono;
        }
      }

      return res;
    }

    friend llvm::raw_ostream &operator<<(llvm::raw_ostream &os,
                                         const value &v) {
      if (auto expr = DynCast<Variable>(v)) {
        os << expr->var;
      } else if (auto expr = DynCast<AddExpr>(v)) {
        os << "(" << value(expr->lhs) << "+" << value(expr->rhs) << ")";
      } else if (auto expr = DynCast<MulExpr>(v)) {
        os << "(" << value(expr->lhs) << "*" << value(expr->rhs) << ")";
      } else if (auto expr = DynCast<AffineExpr>(v)) {
        os << expr->f << "(" << value(expr->expr) << ")";
      } else if (auto expr = DynCast<Constant>(v)) {
        os << expr->val;
      }

      return os;
    }

    struct smt_symbol {
      const Symbol &sym;

      friend llvm::raw_ostream &operator<<(llvm::raw_ostream &os,
                                           smt_symbol v) {
        if (v.sym.val->hasName()) {
          os << v.sym.val->getName();
        } else {
          os << "_" << (const void *)v.sym.val;
        }
        if (v.sym.offset != 0)
          os << "_" << v.sym.offset;
        return os;
      }
    };

    struct smt_dump {
      value v;

      friend llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const smt_dump &v) {
        if (auto expr = DynCast<Variable>(v.v)) {
          os << smt_symbol{expr->var};
        } else if (auto expr = DynCast<AddExpr>(v.v)) {
          os << "(gf2add " << smt_dump{value(expr->lhs)} << " "
             << smt_dump{value(expr->rhs)} << ")";
        } else if (auto expr = DynCast<MulExpr>(v.v)) {
          os << "(gf2mul " << smt_dump{value(expr->lhs)} << " "
             << smt_dump{value(expr->rhs)} << ")";
        } else if (auto expr = DynCast<AffineExpr>(v.v)) {
          os << "(" << expr->f << " " << smt_dump{value(expr->expr)} << ")";
        } else if (auto expr = DynCast<Constant>(v.v)) {
          os << llvm::formatv("#x{0,0+2}", expr->val);
        }

        return os;
      }
    };

    // ass: variable -> constant
    // affeval: F, constant -> constant
    template <typename Assign, typename AffEval>
    constant evaluate(Assign&& ass, AffEval&& ae) const {
      if (auto expr = DynCast<Variable>(*this)) {
        return std::forward<Assign>(ass)(expr->var);
      } else if (auto expr = DynCast<Constant>(*this)) {
        return expr->val;
      } else if (auto expr = DynCast<AddExpr>(*this)) {
        return value(expr->lhs).evaluate(std::forward<Assign>(ass), std::forward<AffEval>(ae)) +
          value(expr->rhs).evaluate(std::forward<Assign>(ass), std::forward<AffEval>(ae));
      } else if (auto expr = DynCast<MulExpr>(*this)) {
        return value(expr->lhs).evaluate(std::forward<Assign>(ass), std::forward<AffEval>(ae)) *
          value(expr->rhs).evaluate(std::forward<Assign>(ass), std::forward<AffEval>(ae));
      } else if (auto expr = DynCast<AffineExpr>(*this)) {
        return std::forward<AffEval>(ae)(expr->f,
          value(expr->expr).evaluate(std::forward<Assign>(ass), std::forward<AffEval>(ae)));
      } else {
        alog(false && "unreachable");
      }
    }

    struct random_eval {
      std::map<variable, constant> assigns;

      constant eval(const value& val) {
        return val.evaluate([this](const variable& v) -> constant {
          if(auto iter = assigns.find(v); iter != assigns.end()) {
            return iter->second;
          }

          auto r = constant::rand();
          assigns.emplace(v, r);
          return r;
        }, [](const F& affine, const constant& c) -> constant {
          return c + affine.c;
        });
      }
    };

    friend llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const random_eval& re) {
      bool first = true;

      for (const auto& [k, v] : re.assigns) {
        if (first) {
          first = false;
        } else {
          os << ", ";
        }

        os << k << "->" << v;
      }

      return os;
    }
  };
};

} // namespace maskscrape

#endif // MASKSCRAPE_EXPR_H
