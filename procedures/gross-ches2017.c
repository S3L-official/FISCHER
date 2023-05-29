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
