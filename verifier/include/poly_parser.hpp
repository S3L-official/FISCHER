#ifndef MASKSCRAPE_POLY_PARSER_H
#define MASKSCRAPE_POLY_PARSER_H

#include "gf2_int.hpp"
#include "polynomial.hpp"
#include "tao/pegtl/ascii.hpp"
#include "tao/pegtl/rules.hpp"
#include <stack>
#include <tao/pegtl.hpp>

namespace maskscrape {

namespace peg = tao::pegtl;

namespace grammar {

struct constant : peg::plus<peg::digit> {};

struct coef : constant {};
struct power : constant {};

struct variable : peg::seq<peg::alpha, peg::star<peg::digit>> {};

struct exponent : peg::seq<variable, peg::opt<peg::one<'^'>, power>> {};

struct monomial
    : peg::sor<peg::seq<coef, peg::star<exponent>>, peg::plus<exponent>> {};

struct expr;

struct value
    : peg::sor<monomial, peg::seq<peg::one<'('>, expr, peg::one<')'>>> {};

struct prodfix : peg::seq<peg::one<'*'>, value> {};
struct prod : peg::seq<value, peg::star<prodfix>> {};

struct sumfix : peg::seq<peg::one<'+'>, prod> {};
struct sum : peg::seq<prod, peg::star<sumfix>> {};

struct expr : sum {};

struct grammar : peg::seq<expr, peg::eof> {};

} // namespace grammar

namespace action {

using poly = polynomial<std::string, gf2_int8>;

struct poly_builder {
  std::stack<poly> result;
  poly monomial;

  static inline const auto one = poly::constant_type(1);

  poly_builder() : monomial(one) {}

  auto pop() {
    poly top = result.top();
    result.pop();
    return top;
  }

  auto &top() { return result.top(); }

  void merge_monomial() {
    result.emplace(monomial);
    monomial = one;
  }

  void add_monomial(const poly::constant_type &c) { monomial *= c; }

  void add_monomial(const poly::variable_type &v, const poly::order_type &k) {
    monomial *= std::initializer_list<poly::ordered_variable>{{v, k}};
  }

  poly &operator*() { return result.top(); }
  const poly &operator*() const { return result.top(); }
};

template <typename Rule> struct build_poly : peg::nothing<Rule> {};

template <> struct build_poly<grammar::monomial> {
  template <typename ActionInput>
  static void apply(const ActionInput &in, poly_builder &s) {
    s.merge_monomial();
  }
};

template <> struct build_poly<grammar::exponent> {
  template <typename ActionInput>
  static void apply(const ActionInput &in, poly_builder &s) {
    auto str = in.string();

    if (auto pos = str.find('^'); pos != std::string::npos) {
      s.add_monomial(str.substr(0, pos), std::stoi(str.substr(pos + 1)));
    } else {
      s.add_monomial(str, 1);
    }
  }
};

template <> struct build_poly<grammar::coef> {
  template <typename ActionInput>
  static void apply(const ActionInput &in, poly_builder &s) {
    s.add_monomial(poly::constant_type(std::stoi(in.string())));
  }
};

template <> struct build_poly<grammar::prodfix> {
  template <typename ActionInput>
  static void apply(const ActionInput &in, poly_builder &s) {
    auto t = s.pop();
    s.top() *= t;
  }
};

template <> struct build_poly<grammar::sumfix> {
  template <typename ActionInput>
  static void apply(const ActionInput &in, poly_builder &s) {
    auto t = s.pop();
    s.top() += t;
  }
};

} // namespace action

template <typename ParseInput>
std::optional<action::poly> parse_poly(ParseInput &&in) {
  action::poly_builder builder;

  if (!peg::parse<grammar::grammar, action::build_poly>(
          std::forward<ParseInput>(in), builder)) {
    return std::nullopt;
  }

  return *builder;
}

} // namespace maskscrape

#endif // MASKSCRAPE_POLY_PARSER_H
