#include "include/verify.h"

// assume that bit of `unsigned char` is 8
typedef unsigned char byte;

// constant for order of SCA security
#ifndef  MASKING_ORDER
#define MASKING_ORDER 2
#endif
const byte d = MASKING_ORDER;

#ifdef NEG_ASSERT
#define XASSERT(p) assert(!(p))
#else
#define XASSERT(p) assert(p)
#endif

// multiplication in GF(2^8)
// ref to https://en.wikipedia.org/wiki/Finite_field_arithmetic#Rijndael.27s_.28AES.29_finite_field
byte Mult(byte a, byte b) {
    byte p = 0;

    for (int i = 0; i < 8; ++i) {
        if (b & 1u) p ^= a;
        b >>= 1u;

        if (a & 0x80u) a = (a << 1u) ^ 0x1bu;
        else a <<= 1u;
    }

    return p;
}

byte XorArray(const byte x[]) {
    byte r = 0;

    for (byte i = 0; i <= d; ++i) {
        r ^= x[i];
    }

    return r;
}

void RandArray(byte x[]) {
    for (byte i = 0; i <= d; ++i) {
        x[i] = Rand();
    }
}

void vmult(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = Mult(a[(i + ra) % (d + 1)], b[(i + rb) % (d + 1)]);
  }
}

void vadd(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = a[(i + ra) % (d + 1)] ^ b[(i + rb) % (d + 1)];
  }
}

int ceil_(double x) {
  int y = x;
  if(x == (double)y) {
    return y;
  }
  return y + 1;
}

int mod_(int x, int y) {
  if(x >= 0) {
    return x % y;
  } else {
    return (y + x) % y;
  }
}

void SecMult(const byte *a, const byte *b, byte *c) {
  byte A = XorArray(a), B = XorArray(b);

  const int k = d + 1;
  typedef byte shares[k];

  shares r[k], a1b, ab1, a2b, ab2;

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
        r[i][j] = Rand();
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

  XASSERT(Mult(A, B) == XorArray(c));
}

void VerifySecMult() {
    byte a[d + 1], b[d + 1], c[d + 1];
    RandArray(a);
    RandArray(b);
    SecMult(a, b, c);
}

int main() {
    VerifySecMult();
}
