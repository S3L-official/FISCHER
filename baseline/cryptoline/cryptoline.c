typedef unsigned char byte;

#ifndef ORDER
#define ORDER 2
#endif
const int d = ORDER;
const int l = d + 1;

#define ALWAYS_INLINE __attribute__((always_inline))

ALWAYS_INLINE void transform(const byte from[], byte to[], byte f(byte)) {
  for (int i = 0; i <= d; ++i) {
    to[i] = f(from[i]);
  }
}

ALWAYS_INLINE byte sigma(const byte a[], byte f(byte)) {
  byte result = 0;

  for (int i = 0; i <= d; ++i) {
    result ^= f(a[i]);
  }

  return result;
}

ALWAYS_INLINE byte id(byte x) { return x; }

ALWAYS_INLINE byte xors(const byte *a) { return sigma(a, id); }

ALWAYS_INLINE byte mult(byte a, byte b) {
    byte p = 0;
    
    for (int i = 0; i < 8; ++i) {
        p ^= (b & 1) * a;
        b >>= 1;
        a <<= 1;
    }

    return p;
}

void rivain_sec_mult(const byte *a, const byte *b, byte *c, byte *r, byte *AB, byte *C) {
  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[j*l + i] = r[i*l + j] ^ mult(a[i], b[j]) ^ mult(a[j], b[i]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= r[i*l + j];
    }
  }

  byte A = xors(a), B = xors(b);
  *AB = mult(A, B);
  *C = xors(c);
}

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

void barthe_sec_mult(const byte *a, const byte *b, byte *c, byte *r, byte *AB, byte *C) {
  const int k = d + 1;
  typedef byte shares[k];

  byte cc[(2 * k)*k], dd[(2 * k)*k];

  vmult(a, 0, b, 0, cc+1*k);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vmult(a, 0, b, i, cc+(2 * i)*k);
    vmult(a, i, b, 0, cc+(2 * i + 1)*k);
  }

  if (k % 4 == 0) {
    vmult(a, 0, b, k/2, cc+k*k);
  } else if (k % 4 == 1) {
    vmult(a, 0, b, k/2, cc+(k - 1)*k);
    vmult(a, k/2, b, 0, cc+k*k);
  } else if (k % 4 == 2) {
    vmult(a, 0, b, k/2, cc+(k - 2)*k);
    vmult(a, k/2, b, 0, cc+(k - 1)*k);
    vmult(a, 0, b, k/2 + 1, cc+k*k);
  }

  vadd(cc+1*k, 0, r+1*k, 0, dd+1*k);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vadd(dd+(3 * i - 2)*k, 0, cc+(2 * i)*k, 0, dd+(3 * i - 1)*k);
    vadd(dd+(3 * i - 1)*k, 0, cc+(2 * i + 1)*k, 0, dd+(3 * i)*k);
    vadd(dd+(3 * i)*k, 0, r+ceil_((i + 1)/2.)*k, i % 2, dd+(3 * i + 1)*k);
  }

  if (k % 4 == 3) {
    transform(dd+(3 * (k/2) + 1)*k, c, id);
  } else if (k % 4 == 0) {
    vadd(dd+(3 * ((k - 1)/2) + 1)*k, 0, cc+k*k, 0, c);
  } else if (k % 4 == 1) {
    vadd(dd+(3 * ((k - 2)/2) + 1)*k, 0, cc+(k - 1)*k, 0, c);
    vadd(cc+k*k, 0, c, 0, c);
  } else if (k % 4 == 2) {
    vadd(dd+(3 * ((k - 3)/2) + 1)*k, 0, cc+(k - 2)*k, 0, c);
    vadd(cc+(k - 1)*k, 0, c, 0, c);
    vadd(r+ceil_((k - 1)/4.)*k, 1, c, 0, c);
    vadd(cc+k*k, 0, c, 0, c);
  }

  byte A = xors(a), B = xors(b);
  *AB = mult(A, B);
  *C = xors(c);
}

void belaid_sec_mult(const byte *a, const byte *b, byte *c, byte *r, byte *rr, byte *AB, byte *C) {
  const int k = d + 1;
  byte alpha[k*k], t[k*k];

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      alpha[i*k+j] = mult(a[i], b[j]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = alpha[i*k+i];

    for (int j = d; j >= i + 2; j -= 2) {
      t[i*k+j] = r[i*k+j] ^ alpha[i*k+j] ^ alpha[j*k+i] ^ rr[j - 1] ^ alpha[i*k+j - 1] ^ alpha[(j - 1)*k+i];
      c[i] ^= t[i*k+j];
    }

    if (i % 2 != d % 2) {
      t[i*k+i + 1] = r[i*k+i + 1] ^ alpha[i*k+i + 1] ^ alpha[(i + 1)*k+i];
      c[i] ^= t[i*k+i + 1];
      if (i % 2 == 1) {
        c[i] ^= rr[i];
      }
    } else {
      for (int j = i - 1; j >= 0; --j) {
        c[i] ^= r[j*k+i];
      }
    }
  }

  byte A = xors(a), B = xors(b);
  *AB = mult(A, B);
  *C = xors(c);
}

void cassiers_sec_mult(const byte *a, const byte *b, byte *c, byte *r, byte *AB, byte *C) {
  const int k = d + 1;
  byte s[k*k], p0[k*k], p1[k*k], z[k*k];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[j*k+i] = r[i*k+j];
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      if (j != i) {
        s[i*k+j] = b[j] ^ r[i*k+j];
        p0[i*k+j] = mult(a[i] ^ 1, r[i*k+j]);
        p1[i*k+j] = mult(a[i], s[i*k+j]);
        z[i*k+j] = p0[i*k+j] ^ p1[i*k+j];
      }
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= z[i*k+j];
    }
  }

  byte A = xors(a), B = xors(b);
  *AB = mult(A, B);
  *C = xors(c);
}

void gross_sec_mult(const byte *a, const byte *b, byte *c, byte *r, byte *AB, byte *C) {
  const int k = d + 1;
  typedef byte shares[k];

  shares a1b, ab1, a2b, ab2;

  vmult(a, 0, b, 0, c);

  for (int i = 0; i < d/4; ++i) {
    vmult(a, 0, b, 2 * i + 1, ab1);
    vmult(a, 2 * i + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * i + 2, ab2);
    vmult(a, 2 * i + 2, b, 0, a2b);

    vadd(c, 0, r+i*k, 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r+i*k, 1, c);
    vadd(c, 0, ab2, 0, c);
    vadd(c, 0, a2b, 0, c);
  }

  const int l = d/4;
  
  if (d % 4 == 3) {
    vmult(a, 0, b, 2 * l + 1, ab1);
    vmult(a, 2 * l + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * l + 2, ab2);

    vadd(c, 0, r+l*k, 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r+l*k, 1, c);
    vadd(c, 0, ab2, 0, c);
  } else if (d % 4 == 2) {
    if (d == 2) {
      shares z;
      z[0] = r[l*k+0];
      z[1] = r[l*k+1];
      z[2] = r[l*k+0] ^ r[l*k+1];

      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 2 * l + 1, b, 0, a1b);

      vadd(c, 0, z, 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, a1b, 0, c);
    } else {
      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 0, b, 2 * l + 2, ab2);

      vadd(c, 0, r+l*k, 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, r+l*k, 2 * l + 2, c);
      vadd(c, 0, ab2, 0, c); 
    }
  } else if (d % 4 == 1) {
    shares z;

    for(int i = 0; i <= d; ++i) {
      z[i] = r[l*k + i % (k/2)];
    }
    
    vmult(a, 0, b, 2 * l + 1, ab1);

    vadd(c, 0, z, 0, c);
    vadd(c, 0, ab1, 0, c);
  }

  byte A = xors(a), B = xors(b);
  *AB = mult(A, B);
  *C = xors(c);
}
