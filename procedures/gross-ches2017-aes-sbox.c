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

AFFINE byte square(byte x) { return mult(x, x); }

AFFINE byte exp4(byte x) { return square(square(x)); }

AFFINE byte exp16(byte x) { return exp4(exp4(x)); }

ALWAYS_INLINE byte exp254(byte x) {
  byte z = square(x);
  byte y = mult(z, x);
  byte w = exp4(y);
  y = mult(y, w);
  y = exp16(y);
  y = mult(y, w);
  y = mult(y, z);

  return y;
}

INLINE void sec_exp254(const byte x[], byte y[]) {
  byte X = rand();

  assume(X == xors(x));

  byte z[d + 1], w[d + 1], u[d + 1], v[d + 1], m[d + 1];

  transform(x, z, square);
  refresh_masks(z);
  sec_mult(z, x, u);
  transform(u, w, exp4);
  refresh_masks(w);
  sec_mult(u, w, v);
  transform(v, v, exp16);
  sec_mult(v, w, m);
  sec_mult(m, z, y);

  assert(exp254(X) == xors(y));
}

// ALWAYS_INLINE byte expd(byte x) {
//   byte r = x;

//   for (int i = 0; i < d; ++i) {
//     r = mult(r, x);
//   }

//   return r;
// }

// INLINE void sec_expd(const byte x[], byte y[]) {
//   byte X = rand();

//   assume(X == xors(x));

//   byte z[d + 1][d + 1];

//   transform(x, z[0], id);

//   for (int i = 0; i < d; ++i) {
//     sec_mult(x, z[i], z[i + 1]);
//   }

//   transform(z[d], y, id);

//   assert(expd(X) == xors(y));
// }

byte rotl1(byte value);
byte rotl2(byte value);
byte rotl3(byte value);
byte rotl4(byte value);

AFFINE byte af(byte x) {
  return x ^ rotl1(x) ^ rotl2(x) ^ rotl3(x) ^ rotl4(x) ^ 0x63u;
}

ALWAYS_INLINE byte sbox(byte x) { return af(exp254(x)); }

INLINE void sec_sbox(const byte x[], byte y[]) {
  byte X = rand();

  assume(X == xors(x));

  sec_exp254(x, y);
  transform(y, y, af);
  if (d % 2 == 1)
    y[0] ^= 0x63u;

  assert(sbox(X) == xors(y));
}
