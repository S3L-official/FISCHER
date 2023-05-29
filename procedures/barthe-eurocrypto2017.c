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

// INLINE void refresh_masks(byte *x) {
//   byte X = rand();

//   assume(X == xors(x));

//   typedef byte shares[d + 1];
//   shares r;

//   for (int i = 0; i <= d; ++i) {
//     r[i] = rand();
//   }

//   vadd(r, 0, x, 0, x);
//   vadd(r, 1, x, 0, x);

//   assert(X == xors(x));
// }
