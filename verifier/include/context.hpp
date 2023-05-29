#ifndef MASKSCRAPE_CONTEXT_H
#define MASKSCRAPE_CONTEXT_H

#include <string>

namespace maskscrape {

// is in unicode context
bool IsUnicode();

inline const char *UnicodeSubscripts[] = {
    "\u2080", "\u2081", "\u2082", "\u2083", "\u2084",
    "\u2085", "\u2086", "\u2087", "\u2088", "\u2089"};
inline const char *UnicodeSuperscripts[] = {
    "\u2070", "\u00B9", "\u00B2", "\u00B3", "\u2074",
    "\u2075", "\u2076", "\u2077", "\u2078", "\u2079"};

inline std::string UnicodeNumOffset(const char *offset[], size_t n) {
  std::string result;

  for (char &c : std::to_string(n)) {
    result += offset[c - '0'];
  }

  return result;
}

inline std::string UnicodeNumSubscript(size_t n) {
  return UnicodeNumOffset(UnicodeSubscripts, n);
}

inline std::string UnicodeNumSuperscript(size_t n) {
  return UnicodeNumOffset(UnicodeSuperscripts, n);
}

} // namespace maskscrape

#endif // MASKSCRAPE_CONTEXT_H
