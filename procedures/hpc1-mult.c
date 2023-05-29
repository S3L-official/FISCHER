#include "maskscrape.h"

INLINE void sec_mult_dom(const byte *a, const byte *b, byte *c) {
  byte r[d + 1][d + 1], u[d + 1][d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[i][j] = rand();
      u[i][j] = mult(a[i], b[j]) ^ r[i][j];
      u[j][i] = mult(a[j], b[i]) ^ r[i][j];
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= u[i][j];
    }
  }
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

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte br[d + 1];

  transform(b, br, id);

  refresh_masks(br);
  sec_mult_dom(a, b, c);

  assert(mult(A, B) == xors(c));
}
