#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte alpha[d + 1][d + 1], t[d + 1][d + 1], r[d + 1][d + 1], rr[d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      alpha[i][j] = mult(a[i], b[j]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d - i - 1; j += 2) {
      r[i][d - j] = rand();
    }
  }

  for (int j = d - 1; j >= 1; j -= 2) {
    rr[j] = rand();
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = alpha[i][i];

    for (int j = d; j >= i + 2; j -= 2) {
      t[i][j] = r[i][j] ^ alpha[i][j] ^ alpha[j][i] ^ rr[j - 1] ^ alpha[i][j - 1] ^ alpha[j - 1][i];
      c[i] ^= t[i][j];
    }

    if (i % 2 != d % 2) {
      t[i][i + 1] = r[i][i + 1] ^ alpha[i][i + 1] ^ alpha[i + 1][i];
      c[i] ^= t[i][i + 1];
      if (i % 2 == 1) {
        c[i] ^= rr[i];
      }
    } else {
      for (int j = i - 1; j >= 0; --j) {
        c[i] ^= r[j][i];
      }
    }
  }

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
