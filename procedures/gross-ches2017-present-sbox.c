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

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  const int k = d + 1;
  typedef byte shares[k];

  shares r[k], a1b, ab1, a2b, ab2;

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
        r[i][j] = rand();
    }
  }

  vmult(a, 0, b, 0, c);

  for (int i = 0; i < d/4; ++i) {
    vmult(a, 0, b, 2 * i + 1, ab1);
    vmult(a, 2 * i + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * i + 2, ab2);
    vmult(a, 2 * i + 2, b, 0, a2b);

    vadd(c, 0, r[i], 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r[i], 1, c);
    vadd(c, 0, ab2, 0, c);
    vadd(c, 0, a2b, 0, c);
  }

  const int l = d/4;
  
  if (d % 4 == 3) {
    vmult(a, 0, b, 2 * l + 1, ab1);
    vmult(a, 2 * l + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * l + 2, ab2);

    vadd(c, 0, r[l], 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r[l], 1, c);
    vadd(c, 0, ab2, 0, c);
  } else if (d % 4 == 2) {
    if (d == 2) {
      shares z;
      z[0] = r[l][0];
      z[1] = r[l][1];
      z[2] = r[l][0] ^ r[l][1];

      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 2 * l + 1, b, 0, a1b);

      vadd(c, 0, z, 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, a1b, 0, c);
    } else {
      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 0, b, 2 * l + 2, ab2);

      vadd(c, 0, r[l], 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, r[l], 2 * l + 2, c);
      vadd(c, 0, ab2, 0, c); 
    }
  } else if (d % 4 == 1) {
    shares z;

    for(int i = 0; i <= d; ++i) {
      z[i] = r[l][i % (k/2)];
    }
    
    vmult(a, 0, b, 2 * l + 1, ab1);

    vadd(c, 0, z, 0, c);
    vadd(c, 0, ab1, 0, c);
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
