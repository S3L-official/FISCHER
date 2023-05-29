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
