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

INLINE void sec_full_adder_impl(const field *x, const field *y, const field *z, field *w0, field *w1) {
    field a[d + 1];

    for (int i = 0; i <= d; ++i) {
        a[i] = x[i] ^ y[i];
        w0[i] = z[i] ^ a[i];
        w1[i] = x[i] ^ (a[i] ^ (x[i] ^ z[i]));
    }
}

INLINE void sec_full_adder(const field *x, const field *y, const field *z, field *w) {
    field X = rand(), Y = rand(), Z = rand();

    assume(X == xors(x));
    assume(Y == xors(y));
    assume(Z == xors(z));

    field w0[d + 1], w1[d + 1];

    sec_full_adder_impl(x, y, z, w0, w1);

    for (int i = 0; i <= d; ++i) {
        w[i] = w0[i] ^ rotl<1>(w1[i]);
    }

    assert(full_adder(X, Y, Z) == xors(w));
}

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

template <unsigned I>
ALWAYS_INLINE field add(field x, field y) {
    field c = 0, z = 0;

    add_steps(x, y, &z, &c, make_index_sequence<I - 1>{});

    z = setzero<I - 1>(z) ^ rotl<I - 1>(getbit<I - 1>(y) ^ getbit<I - 1>(x) ^ c);
    
    return z;
}

template <unsigned I>
ALWAYS_INLINE void sec_add_one_step(const field* x, const field *y, field *z, field *c) {
    field x0[d + 1], y0[d + 1], w0[d + 1], w1[d + 1];

    for (int i = 0; i <= d; ++i) {
        x0[i] = getbit<I>(x[i]);
        y0[i] = getbit<I>(y[i]);
    }

    sec_full_adder_impl(x0, y0, c, w0, w1);

    for (int i = 0; i <= d; ++i) {
        z[i] = setzero<I>(z[i]) ^ rotl<I>(w0[i]);
        c[i] = w1[i];
    }
}

template <unsigned ...I>
ALWAYS_INLINE void sec_add_steps(const field* x, const field *y, field *z, field *c, index_sequence<I...>) {
    (sec_add_one_step<I>(x, y, z, c), ...);
}

template <unsigned I>
ALWAYS_INLINE void sec_add(const field *x, const field *y, field *z) {
    field X = rand(), Y = rand();

    assume(X == xors(x));
    assume(Y == xors(y));

    field c[d + 1];

    for (int i = 0; i <= d; ++i) c[i] = 0;
    for (int i = 0; i <= d; ++i) z[i] = 0;
    
    sec_add_steps(x, y, z, c, make_index_sequence<I - 1>{});

    for (int i = 0; i <= d; ++i) {
        z[i] = setzero<I - 1>(z[i]) ^ rotl<I - 1>(getbit<I - 1>(y[i]) ^ getbit<I - 1>(x[i]) ^ c[i]);
    }

    assert(add<I>(X, Y) == xors(z));
}

ALWAYS_INLINE constexpr int largest_p_under(int k) {
    switch(k) {
        case 2: return 3;
        case 3: return 7;
        case 4: return 13;
        case 5: return 31;
        case 6: return 61;
        case 8: return 251;
        case 10: return 1021;
        case 12: return 4093;
        case 14: return 16381;
        case 16: return 65521;
    }

    __builtin_unreachable();
}

constexpr const int p = largest_p_under(k);

ALWAYS_INLINE constexpr int pow(int v, int p) {
    int r = 1;

    for (int i = 0; i < p; ++i) {
        r *= v;
    }

    return r;
}

template <unsigned I>
ALWAYS_INLINE void bit_copy_one_step(field x, field *y) {
    if ((p % pow(2, I)) / pow(2, I) == 1){
        *y = setzero<I>(*y) ^ rotl<I>(x);
    } else {
        *y = setzero<I>(*y);
    }
}

template <unsigned ...I>
ALWAYS_INLINE field bit_copy_steps(field x, index_sequence<I...>) {
    field y = 0;

    (bit_copy_one_step<I>(x, &y), ...);

    return y;
}

template <unsigned I>
ALWAYS_INLINE void bit_copy_mask_one_step(const field *x, field *y) {
    if ((p % pow(2, I)) / pow(2, I) == 1){
        for (int j = 0; j <= d; ++j) y[j] = setzero<I>(y[j]) ^ rotl<I>(x[j]);
    } else {
        for (int j = 0; j <= d; ++j) y[j] = setzero<I>(y[j]);
    }
}

template <unsigned ...I>
ALWAYS_INLINE void bit_copy_mask_steps(const field *x, field *y, index_sequence<I...>) {
    (bit_copy_mask_one_step<I>(x, y), ...);
}

extern "C" {

ALWAYS_INLINE field bit_copy(field x) {
    return bit_copy_steps(x, make_index_sequence<k>{});
}

ALWAYS_INLINE void bit_copy_mask(const field *x, field *y) {
    for (int j = 0; j <= d; ++j) y[j] = 0;

    bit_copy_mask_steps(x, y, make_index_sequence<k>{});
}

ALWAYS_INLINE field add_modp_const() {
    field pp = pow(2, k + 1) - p, s, sp, b, a;

    s = add<k + 1>(1, 1);
    sp = add<k + 1>(s, pp);

    b = getbit<k>(sp);

    a = bit_copy(b);

    return add<k>(a, sp);
}

ALWAYS_INLINE field add_modp(field x, field y) {
    field pp = 0, s, sp, b, a;

    s = add<k + 1>(x, y);
    sp = add<k + 1>(s, pp);

    b = getbit<k>(sp);

    a = bit_copy(b);

    return add<k>(a, sp);
}

INLINE void sec_add_modp(const field *x, const field *y, field *z) {
    field X = rand(), Y = rand();

    assume(X == xors(x));
    assume(Y == xors(y));

    field pp[d + 1], s[d + 1], sp[d + 1], b[d + 1], a[d + 1];

    for(int i = 0; i <= d; ++i) pp[i] = 0;

    pp[0] = pow(2, k + 1) - p;
    
    sec_add<k + 1>(x, y, s);
    sec_add<k + 1>(s, pp, sp);

    for(int i = 0; i <= d; ++i) b[i] = getbit<k>(sp[i]);

    bit_copy_mask(b, a);
    sec_add<k>(a, sp, z);

    assert((add_modp_const() ^ add_modp(X, Y)) == xors(z));
}

}
