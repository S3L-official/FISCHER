#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte r[d + 1][d + 1], s[d + 1][d + 1], p0[d + 1][d + 1], p1[d + 1][d + 1], z[d + 1][d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[i][j] = rand();
      r[j][i] = r[i][j];
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      if (j != i) {
        s[i][j] = b[j] ^ r[i][j];
        p0[i][j] = mult(a[i] ^ 1, r[i][j]);
        p1[i][j] = mult(a[i], s[i][j]);
        z[i][j] = p0[i][j] ^ p1[i][j];
      }
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= z[i][j];
    }
  }

  assert(mult(A, B) == xors(c));
}
