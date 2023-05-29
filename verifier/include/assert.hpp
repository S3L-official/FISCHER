#ifndef MASKSCRAPE_ASSERT_H
#define MASKSCRAPE_ASSERT_H

#include <log.hpp>

#define alog(cond)                                                             \
  if (!(cond)) {                                                               \
    elog("assert failed: {0}", #cond);                                         \
    std::abort();                                                              \
  }

#endif // MASKSCRAPE_ASSERT_H
