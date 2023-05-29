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

const byte a0 = 1;
const byte a1 = 2;
const byte a2 = 3;
const byte a3 = 4;
const byte a4 = 5;
const byte a5 = 6;
const byte a6 = 7;
const byte a7 = 8;
const byte a8 = 9;
const byte a9 = 10;
const byte a10 = 11;
const byte a11 = 12;
const byte a12 = 13;
const byte a13 = 14;
const byte a14 = 15;

AFFINE byte square(byte x) { return mult(x, x); }

AFFINE byte exp4(byte x) { return square(square(x)); }

AFFINE byte exp8(byte x) { return square(exp4(x)); }

AFFINE byte L1(byte x) {
  return mult(a1, x) ^ mult(a2, square(x)) ^ mult(a4, exp4(x)) ^ mult(a8, exp8(x));
}

AFFINE byte L3(byte x) {
  return mult(a3, x) ^ mult(a6, square(x)) ^ mult(a12, exp4(x)) ^ mult(a9, exp8(x));
}

AFFINE byte L5(byte x) {
  return mult(a5, x) ^ mult(a10, square(x));
}

AFFINE byte L7(byte x) {
  return mult(a7, x) ^ mult(a14, square(x)) ^ mult(a13, exp4(x)) ^ mult(a11, exp8(x));
}

INLINE byte exp3(byte x) {
  return mult(x, square(x));
}

INLINE byte exp5(byte x) {
  return mult(x, exp4(x));
}

INLINE byte exp7(byte x) {
  return mult(exp3(x), exp4(x));
}

INLINE byte S(byte x) {
  return a0 ^ L1(x) ^ L3(exp3(x)) ^ L5(exp5(x)) ^ L7(exp7(x));
}

INLINE void sec_S(const byte *x, byte *y) {
  byte X = rand();

  assume(X == xors(x));

  typedef byte shares[d + 1];
  shares l1, l3, l5, l7, e2, e3, e4, e5, e7;

  transform(x, l1, L1);
  refresh_masks(l1);
  transform(x, e2, square);
  refresh_masks(e2);
  transform(x, e4, exp4);
  refresh_masks(e4);

  sec_mult(x, e2, e3);
  sec_mult(x, e4, e5);
  sec_mult(e3, e4, e7);
  
  transform(e3, l3, L3);
  transform(e5, l5, L5);
  transform(e7, l7, L7);

  for(int i = 0; i <= d; ++i) {
    y[i] = l1[i] ^ l3[i] ^ l5[i] ^ l7[i];
  }

  y[0] ^= a0;

  assert(S(X) == xors(y));
}
