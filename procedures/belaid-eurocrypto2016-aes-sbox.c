#include "maskscrape.h"

INLINE void sec_mult(const byte *a, const byte *b, byte *c) {
  byte A = rand(), B = rand();

  assume(A == xors(a));
  assume(B == xors(b));

  byte alpha[d + 1][d + 1], t[d + 1][d + 1], r[d + 1][d + 1], rr[d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      alpha[i][j] = mult(a[i], b[j]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d - i - 1; j += 2) {
      r[i][d - j] = rand();
    }
  }

  for (int j = d - 1; j >= 1; j -= 2) {
    rr[j] = rand();
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = alpha[i][i];

    for (int j = d; j >= i + 2; j -= 2) {
      t[i][j] = r[i][j] ^ alpha[i][j] ^ alpha[j][i] ^ rr[j - 1] ^ alpha[i][j - 1] ^ alpha[j - 1][i];
      c[i] ^= t[i][j];
    }

    if (i % 2 != d % 2) {
      t[i][i + 1] = r[i][i + 1] ^ alpha[i][i + 1] ^ alpha[i + 1][i];
      c[i] ^= t[i][i + 1];
      if (i % 2 == 1) {
        c[i] ^= rr[i];
      }
    } else {
      for (int j = i - 1; j >= 0; --j) {
        c[i] ^= r[j][i];
      }
    }
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
