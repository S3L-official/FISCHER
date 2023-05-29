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

// INLINE void refresh_masks(byte *x) {
//   byte X = rand();

//   assume(X == xors(x));

//   for (byte i = 1; i <= d; ++i) {
//     byte tmp = rand();
//     x[0] ^= tmp;
//     x[i] ^= tmp;
//   }

//   assert(X == xors(x));
// }
