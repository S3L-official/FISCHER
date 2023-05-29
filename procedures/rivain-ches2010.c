#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte r[d + 1][d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[i][j] = rand();
      r[j][i] = r[i][j] ^ mult(a[i], b[j]) ^ mult(a[j], b[i]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= r[i][j];
    }
  }

  assert(mult(A, B) == xors(c));
}

INLINE void refresh_masks(const byte *x, byte *y) {
  byte X = rand();

  assume(X == xors(x));

  transform(x, y, id);

  for (byte i = 1; i <= d; ++i) {
    byte tmp = rand();
    y[0] ^= tmp;
    y[i] ^= tmp;
  }

  assert(X == xors(y));
}

ALWAYS_INLINE byte square(byte x) { return mult(x, x); }

ALWAYS_INLINE byte exp4(byte x) { return square(square(x)); }

ALWAYS_INLINE byte exp16(byte x) { return exp4(exp4(x)); }

ALWAYS_INLINE byte exp254(byte x) {
  byte z = square(x);
  byte y = mult(z, x);
  byte w = exp4(y);
  y = mult(y, w);
  y = exp16(y);
  y = mult(y, w);
  y = mult(y, z);

  return y;
}

INLINE void sec_exp254(const byte x[], byte y[]) {
  byte X = rand();

  assume(X == xors(x));

  byte z[d + 1], zr[d + 1], w[d + 1], wr[d + 1], u[d + 1], v[d + 1], v16[d + 1], m[d + 1];

  transform(x, z, square);
  refresh_masks(z, zr);
  sec_mult(zr, x, u);
  transform(u, w, exp4);
  refresh_masks(w, wr);
  sec_mult(u, wr, v);
  transform(v, v16, exp16);
  sec_mult(v16, wr, m);
  sec_mult(m, z, y);

  assert(exp254(X) == xors(y));
}

// ALWAYS_INLINE byte expd(byte x) {
//   byte r = x;

//   for (int i = 0; i < d; ++i) {
//     r = mult(r, x);
//   }

//   return r;
// }

// INLINE void sec_expd(const byte x[], byte y[]) {
//   byte X = rand();

//   assume(X == xors(x));

//   byte z[d + 1][d + 1];

//   transform(x, z[0], id);

//   for (int i = 0; i < d; ++i) {
//     sec_mult(x, z[i], z[i + 1]);
//   }

//   transform(z[d], y, id);

//   assert(expd(X) == xors(y));
// }

byte rotl1(byte value);
byte rotl2(byte value);
byte rotl3(byte value);
byte rotl4(byte value);

AFFINE byte af(byte x) {
  return x ^ rotl1(x) ^ rotl2(x) ^ rotl3(x) ^ rotl4(x) ^ 0x63u;
}

ALWAYS_INLINE byte sbox(byte x) { return af(exp254(x)); }

INLINE void sec_sbox(const byte x[], byte y[]) {
  byte X = rand();

  assume(X == xors(x));

  byte x254[d + 1];

  sec_exp254(x, x254);
  transform(x254, y, af);
  if (d % 2 == 1)
    y[0] ^= 0x63u;

  assert(sbox(X) == xors(y));
}
