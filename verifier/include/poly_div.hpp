#ifndef MASKSCRAPE_POLYDIV_H
#define MASKSCRAPE_POLYDIV_H

#include <assert.hpp>

namespace maskscrape {

template <typename Poly> struct PolyDivResult {
  Poly quotient;
  Poly remainder;

  bool isExact() const { return remainder == Poly::zero; }

  Poly &operator*() { return quotient; }
  const Poly &operator*() const { return quotient; }
};

template <typename Poly>
PolyDivResult<Poly> polyDiv(const Poly &dividend, const Poly &divisor) {
  alog(divisor != Poly::zero);

  Poly q;
  Poly r = dividend;

  auto ld = divisor.lead_term();
  while (r != Poly::zero) {
    auto lr = r.lead_term();

    auto opt = Poly::term_div(lr, ld);
    if (!opt) {
      break;
    }

    auto t = Poly::term_to_poly(opt.value());

    q += t;
    r += t * divisor;
  }

  return {q, r};
}

// Con = Map<Poly, Poly>
template <typename Poly, typename Con>
Poly polySubstitute(const Poly &p, const Con &sub) {
  Poly result = p;

  auto final_value = [&sub](Poly &result) {
    for (auto iter = sub.find(result); iter != sub.end();
         iter = sub.find(result)) {
      result = iter->second;
    }
  };

  size_t count;
  do {
    count = 0;
    final_value(result);

    for (const auto &[k, v] : sub) {
      if (auto res = polyDiv(result, k); res.isExact()) {
        final_value(*res);
        result = polySubstitute(*res, sub) * polySubstitute(v, sub);
      } else {
        count++;
      }
    }
  } while (count < sub.size());

  return result;
}

} // namespace maskscrape

#endif // MASKSCRAPE_POLYDIV_H
