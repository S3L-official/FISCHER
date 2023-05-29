#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte r[(d + 1) * (d + 1)], x[d + 1][d + 1];

  for (int i = 0; i < (d + 1) * (d + 1); ++i) {
    r[i] = rand();
  }

  x[0][0] = mult(a[0], b[0]) ^ r[0] ^ r[1];
  x[0][1] = mult(a[0], b[1]) ^ r[1] ^ r[2];
  x[0][2] = mult(a[0], b[2]) ^ r[2] ^ r[3];
  x[1][0] = mult(a[1], b[0]) ^ r[3] ^ r[4];
  x[1][1] = mult(a[1], b[1]) ^ r[4] ^ r[5];
  x[1][2] = mult(a[1], b[2]) ^ r[5] ^ r[6];
  x[2][0] = mult(a[2], b[0]) ^ r[6] ^ r[7];
  x[2][1] = mult(a[2], b[1]) ^ r[7] ^ r[8];
  x[2][2] = mult(a[2], b[2]) ^ r[8] ^ r[0];

  c[0] = x[0][0] ^ x[0][1] ^ x[0][2];
  c[1] = x[1][0] ^ x[1][1] ^ x[1][2];
  c[2] = x[2][0] ^ x[2][1] ^ x[2][2];

  assert(mult(A, B) == xors(c));
}

INLINE void refresh_masks(byte *x) {
  byte X = rand();

  assume(X == xors(x));

  for (byte i = 0; i <= d; ++i) {
    for (byte j = i + 1; j <= d; ++j) {
      byte tmp = rand();
      x[i] ^= tmp;
      x[j] ^= tmp;
    }
  }

  assert(X == xors(x));
}

AFFINE byte square(byte x) { return mult(x, x); }

AFFINE byte exp4(byte x) { return square(square(x)); }

AFFINE byte exp16(byte x) { return exp4(exp4(x)); }

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

  byte z[d + 1], w[d + 1], u[d + 1], v[d + 1], m[d + 1];

  transform(x, z, square);
  refresh_masks(z);
  sec_mult(z, x, u);
  transform(u, w, exp4);
  refresh_masks(w);
  sec_mult(u, w, v);
  transform(v, v, exp16);
  sec_mult(v, w, m);
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

  sec_exp254(x, y);
  transform(y, y, af);
  if (d % 2 == 1)
    y[0] ^= 0x63u;

  assert(sbox(X) == xors(y));
}
