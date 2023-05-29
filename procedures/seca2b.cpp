extern "C" {
#include "maskscrape.h"
}

template <typename T, T ...>
struct integer_sequence{};

template <unsigned ...I>
using index_sequence = integer_sequence<unsigned, I...>;

template <unsigned I>
using make_index_sequence = __make_integer_seq<integer_sequence, unsigned, I>;

extern "C" {

AFFINE byte hole__(byte x);

}

// get bit at pos 0 of field value: 1001 -> 0001
template <unsigned>
AFFINE byte getbit(byte x) { return hole__(x); }

// set pos 0 of field value to zero: 1001 -> 1000
template <unsigned>
AFFINE byte setzero(byte x) { return hole__(x); }

// cycle shift to left (1 bit) -> 1001 -> 0011
template <unsigned>
AFFINE byte rotl(byte x) { return hole__(x); }

template <>
ALWAYS_INLINE byte rotl<0>(byte x) { return x; }

extern "C" {

typedef byte field;

#ifndef K
#define K 2
#endif
const int k = K;

ALWAYS_INLINE void full_adder_impl(field x, field y, field z, field *w0, field *w1) {
    field a = x ^ y;
    *w0 = z ^ a;
    *w1 = x ^ (a ^ (x ^ z));
}

ALWAYS_INLINE field full_adder(field x, field y, field z) {
    field a = x ^ y;
    return (z ^ a) ^ rotl<1>(x ^ (a ^ (x ^ z)));
}

}

template <unsigned D>
ALWAYS_INLINE void sec_full_adder_impl(const field *x, const field *y, const field *z, field *w0, field *w1) {
    field a[D + 1];

    for (int i = 0; i <= D; ++i) {
        a[i] = x[i] ^ y[i];
        w0[i] = z[i] ^ a[i];
        w1[i] = x[i] ^ (a[i] ^ (x[i] ^ z[i]));
    }
}

template <unsigned D>
ALWAYS_INLINE field xors(const field *x) {
    field res = 0;

    for(int i = 0; i <= D; ++i) {
        res ^= x[i];
    }

    return res;
}

template <unsigned D>
INLINE void sec_full_adder(const field *x, const field *y, const field *z, field *w) {
    field X = rand(), Y = rand(), Z = rand();

    assume(X == xors<D>(x));
    assume(Y == xors<D>(y));
    assume(Z == xors<D>(z));

    field w0[D + 1], w1[D + 1];

    sec_full_adder_impl<D>(x, y, z, w0, w1);

    for (int i = 0; i <= D; ++i) {
        w[i] = w0[i] ^ rotl<1>(w1[i]);
    }

    assert(full_adder(X, Y, Z) == xors<D>(w));
}

template <unsigned I>
ALWAYS_INLINE void add_one_step(field x, field y, field *z, field *c) {
    field w0, w1;
    
    field x0 = getbit<I>(x);
    field y0 = getbit<I>(y);

    full_adder_impl(x0, y0, *c, &w0, &w1);

    *z = setzero<I>(*z) ^ rotl<I>(w0);
    *c = w1;
}

template <unsigned ...I>
ALWAYS_INLINE void add_steps(field x, field y, field *z, field *c, index_sequence<I...>) {
    (add_one_step<I>(x, y, z, c), ...);
}

extern "C" {

ALWAYS_INLINE field add(field x, field y) {
    field c = 0, z = 0;

    add_steps(x, y, &z, &c, make_index_sequence<k - 1>{});

    z = setzero<k - 1>(z) ^ rotl<k - 1>(getbit<k - 1>(y) ^ getbit<k - 1>(x) ^ c);
    
    return z;
}

}

template <unsigned D, unsigned I>
ALWAYS_INLINE void sec_add_one_step(const field* x, const field *y, field *z, field *c) {
    field x0[D + 1], y0[D + 1], w0[D + 1], w1[D + 1];

    for (int i = 0; i <= D; ++i) {
        x0[i] = getbit<I>(x[i]);
        y0[i] = getbit<I>(y[i]);
    }

    sec_full_adder_impl<D>(x0, y0, c, w0, w1);

    for (int i = 0; i <= D; ++i) {
        z[i] = setzero<I>(z[i]) ^ rotl<I>(w0[i]);
        c[i] = w1[i];
    }
}

template <unsigned D, unsigned ...I>
ALWAYS_INLINE void sec_add_steps(const field* x, const field *y, field *z, field *c, index_sequence<I...>) {
    (sec_add_one_step<D, I>(x, y, z, c), ...);
}

template <unsigned D>
INLINE void sec_add(const field *x, const field *y, field *z) {
    field X = rand(), Y = rand();

    assume(X == xors<D>(x));
    assume(Y == xors<D>(y));

    field c[D + 1];

    for (int i = 0; i <= D; ++i) c[i] = 0;
    for (int i = 0; i <= D; ++i) z[i] = 0;
    
    sec_add_steps<D>(x, y, z, c, make_index_sequence<k - 1>{});

    for (int i = 0; i <= D; ++i) {
        z[i] = setzero<k - 1>(z[i]) ^ rotl<k - 1>(getbit<k - 1>(y[i]) ^ getbit<k - 1>(x[i]) ^ c[i]);
    }

    assert(add(X, Y) == xors<D>(z));
}

ALWAYS_INLINE field a2b(field x) {
    return x;
}

template <unsigned D>
ALWAYS_INLINE void sec_a2b_impl(const field *x, field *z) {
    field y[D + 1], yp[D + 1], s[D + 1], sp[D + 1];

    sec_a2b_impl<D / 2>(x, y);
    sec_a2b_impl<D - D / 2 - 1>(&x[D / 2 + 1], yp);

    for (int i = 0; i <= D / 2; ++i) s[i] = y[i];
    for (int i = D / 2 + 1; i <= D; ++i) s[i] = 0;

    for (int i = 0; i <= D / 2; ++i) sp[i] = 0;
    for (int i = D / 2 + 1; i <= D; ++i) sp[i] = yp[i - D / 2 - 1];

    sec_add<D>(s, sp, z);
}

template <unsigned D>
ALWAYS_INLINE void a2b_verif(const field *x, field *z) {
    field y[D + 1], yp[D + 1], s[D + 1], sp[D + 1];

    a2b_verif<D / 2>(x, y);
    a2b_verif<D - D / 2 - 1>(&x[D / 2 + 1], yp);

    for (int i = 0; i <= D / 2; ++i) s[i] = y[i];
    for (int i = D / 2 + 1; i <= D; ++i) s[i] = 0;

    for (int i = 0; i <= D / 2; ++i) sp[i] = 0;
    for (int i = D / 2 + 1; i <= D; ++i) sp[i] = yp[i - D / 2 - 1];

    for (int i = 0; i <= D; ++i) z[i] = add(s[i], sp[i]);
}

template <>
ALWAYS_INLINE void sec_a2b_impl<0>(const field *x, field *z) {
    z[0] = a2b(x[0]);
}

template <>
ALWAYS_INLINE void a2b_verif<0>(const field *x, field *z) {
    z[0] = a2b(x[0]);
}

extern "C" {

INLINE void sec_a2b(const field *x, field *z) {
    field y[d + 1];

    sec_a2b_impl<d>(x, z);

    a2b_verif<d>(x, y);

    assert(xors(y) == xors(z));
}

}
