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

INLINE void refresh_masks(byte *x) {
  byte X = rand();

  assume(X == xors(x));

  for (byte i = 1; i <= d; ++i) {
    byte tmp = rand();
    x[0] ^= tmp;
    x[i] ^= tmp;
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

#undef AFFINE
#define AFFINE INLINE

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
  transform(x, e2, square);
  transform(x, e4, exp4);

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
