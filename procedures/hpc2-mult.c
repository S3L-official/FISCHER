#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte r[d + 1][d + 1], u[d + 1][d + 1], v[d + 1][d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[i][j] = rand();
      r[j][i] = r[i][j];
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      if (j != i) {
        u[i][j] = mult(a[i] ^ 1, r[i][j]);
        v[i][j] = b[j] ^ r[i][j];
      }
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
        if (i != j) {
            c[i] ^= u[i][j] ^ mult(a[i], v[i][j]);
        }
    }
  }

  assert(mult(A, B) == xors(c));
}
