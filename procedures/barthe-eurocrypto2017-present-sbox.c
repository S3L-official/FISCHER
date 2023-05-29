#include "maskscrape.h"

ALWAYS_INLINE void vmult(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[(i + ra) % (d + 1)], b[(i + rb) % (d + 1)]);
  }
}

ALWAYS_INLINE void vadd(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = a[(i + ra) % (d + 1)] ^ b[(i + rb) % (d + 1)];
  }
}

ALWAYS_INLINE int ceil_(double x) {
  int y = x;
  if(x == (double)y) {
    return y;
  }
  return y + 1;
}

ALWAYS_INLINE int mod_(int x, int y) {
  if(x >= 0) {
    return x % y;
  } else {
    return (y + x) % y;
  }
}

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  const int k = d + 1;
  typedef byte shares[k];

  shares r[k], cc[2 * k], dd[2 * k];
  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      r[i][j] = rand();
    }
  }

  vmult(a, 0, b, 0, cc[1]);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vmult(a, 0, b, i, cc[2 * i]);
    vmult(a, i, b, 0, cc[2 * i + 1]);
  }

  if (k % 4 == 0) {
    vmult(a, 0, b, k/2, cc[k]);
  } else if (k % 4 == 1) {
    vmult(a, 0, b, k/2, cc[k - 1]);
    vmult(a, k/2, b, 0, cc[k]);
  } else if (k % 4 == 2) {
    vmult(a, 0, b, k/2, cc[k - 2]);
    vmult(a, k/2, b, 0, cc[k - 1]);
    vmult(a, 0, b, k/2 + 1, cc[k]);
  }

  vadd(cc[1], 0, r[1], 0, dd[1]);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vadd(dd[3 * i - 2], 0, cc[2 * i], 0, dd[3 * i - 1]);
    vadd(dd[3 * i - 1], 0, cc[2 * i + 1], 0, dd[3 * i]);
    vadd(dd[3 * i], 0, r[ceil_((i + 1)/2.)], i % 2, dd[3 * i + 1]);
  }

  if (k % 4 == 3) {
    transform(dd[3 * (k/2) + 1], c, id);
  } else if (k % 4 == 0) {
    vadd(dd[3 * ((k - 1)/2) + 1], 0, cc[k], 0, c);
  } else if (k % 4 == 1) {
    vadd(dd[3 * ((k - 2)/2) + 1], 0, cc[k - 1], 0, c);
    vadd(cc[k], 0, c, 0, c);
  } else if (k % 4 == 2) {
    vadd(dd[3 * ((k - 3)/2) + 1], 0, cc[k - 2], 0, c);
    vadd(cc[k - 1], 0, c, 0, c);
    vadd(r[ceil_((k - 1)/4.)], 1, c, 0, c);
    vadd(cc[k], 0, c, 0, c);
  }

  assert(mult(A, B) == xors(c));
}

INLINE void refresh_masks(byte *x) {
  byte X = rand();

  assume(X == xors(x));

  typedef byte shares[d + 1];
  shares r;

  for (int i = 0; i <= d; ++i) {
    r[i] = rand();
  }

  vadd(r, 0, x, 0, x);
  vadd(r, 1, x, 0, x);

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
