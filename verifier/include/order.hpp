#ifndef MASKSCRAPE_ORDER_H
#define MASKSCRAPE_ORDER_H

namespace maskscrape {

template <typename T> struct order {
  bool operator()(const T &l, const T &r) const { return T::order(l, r); }
};

} // namespace maskscrape

#endif // MASKSCRAPE_ORDER_H
