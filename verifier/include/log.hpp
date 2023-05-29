#ifndef MASKSCRAPE_LOG_H
#define MASKSCRAPE_LOG_H

#include <memory>
#include <source_location>

#include "llvm/ADT/StringRef.h"
#include "llvm/Support/Chrono.h"
#include <llvm/Support/FormatVariadic.h>
#include <llvm/Support/raw_ostream.h>

namespace maskscrape {

#define LOGGER_LEVELS X(Debug) X(Info) X(Warning) X(Error)

#define LOGGER_TO_STR_IMPL(x) #x
#define LOGGER_TO_STR(x) LOGGER_TO_STR_IMPL(x)

#define LOGGER_FILENAME_WIDTH_IMPL 18
#define LOGGER_LINENO_WIDTH_IMPL 3
#define LOGGER_FILENAME_WIDTH LOGGER_TO_STR(LOGGER_FILENAME_WIDTH_IMPL)
#define LOGGER_LINENO_WIDTH LOGGER_TO_STR(LOGGER_LINENO_WIDTH_IMPL)

struct SourceLocation {
  llvm::StringRef filename;
  size_t lineno;
};

struct StringRefWithSourceLocation {
  llvm::StringRef str;
  SourceLocation loc;

  StringRefWithSourceLocation(llvm::StringRef str,
                              SourceLocation loc = {__builtin_FILE(),
                                                    __builtin_LINE()})
      : str(str), loc(loc) {}
  StringRefWithSourceLocation(const char *str,
                              SourceLocation loc = {__builtin_FILE(),
                                                    __builtin_LINE()})
      : str(str), loc(loc) {}
};

struct Logger {

  enum Level : unsigned char {
#define X(v) v,
    LOGGER_LEVELS
#undef X
  };

  static inline const char LevelChar[] = {
#define X(v) #v[0],
      LOGGER_LEVELS
#undef X
  };

  static const char LevelToChar(Level L) { return LevelChar[L]; };

  // returns -1 if not found
  static Level LevelFromString(llvm::StringRef Str) {
#define X(v)                                                                   \
  if (llvm::StringRef{#v}.startswith_lower(Str)) {                             \
    return v;                                                                  \
  }
    LOGGER_LEVELS
#undef X

    return Level{(unsigned char)-1};
  }

  llvm::raw_ostream *Out;
  Level CurrentLevel;

  Logger(llvm::raw_ostream &O, Level L) : Out(&O), CurrentLevel(L) {}

  virtual void logImpl(Level L, const llvm::formatv_object_base &Args,
                       SourceLocation Loc) {
    llvm::sys::TimePoint<> Timestamp = std::chrono::system_clock::now();
    *Out << llvm::formatv(
        "{0}[{1:%H:%M:%S.%L}][{3," LOGGER_FILENAME_WIDTH
        "}:{4,-" LOGGER_LINENO_WIDTH "}] {2}\n",
        LevelToChar(L), Timestamp, Args,
        Loc.filename.drop_front(Loc.filename.find_last_of('/') + 1),
        Loc.lineno);
  }

  void log(Level L, const llvm::formatv_object_base &Args, SourceLocation Loc) {
    if (CurrentLevel <= L) {
      logImpl(L, Args, Loc);
    }
  }
};

inline std::unique_ptr<Logger> GlobalLogger =
    std::make_unique<Logger>(llvm::errs(), Logger::Info);

template <typename... Ts>
void log(Logger::Level L, StringRefWithSourceLocation Fmt, Ts &&...Args) {
  GlobalLogger->log(L, llvm::formatv(Fmt.str.data(), std::forward<Ts>(Args)...),
                    Fmt.loc);
}

template <typename... Ts>
void elog(StringRefWithSourceLocation Fmt, Ts &&...Args) {
  log(Logger::Error, Fmt, std::forward<Ts>(Args)...);
}

template <typename... Ts>
void wlog(StringRefWithSourceLocation Fmt, Ts &&...Args) {
  log(Logger::Warning, Fmt, std::forward<Ts>(Args)...);
}

template <typename... Ts>
void ilog(StringRefWithSourceLocation Fmt, Ts &&...Args) {
  log(Logger::Info, Fmt, std::forward<Ts>(Args)...);
}

template <typename... Ts>
void dlog(StringRefWithSourceLocation Fmt, Ts &&...Args) {
  log(Logger::Debug, Fmt, std::forward<Ts>(Args)...);
}

template <typename T> struct LoggerMethod {
  template <typename... Ts>
  void elog(StringRefWithSourceLocation Fmt, Ts &&...Args) const {
    static_cast<const T &>(*this).log(Logger::Error, Fmt,
                                      std::forward<Ts>(Args)...);
  }

  template <typename... Ts>
  void wlog(StringRefWithSourceLocation Fmt, Ts &&...Args) const {
    static_cast<const T &>(*this).log(Logger::Warning, Fmt,
                                      std::forward<Ts>(Args)...);
  }

  template <typename... Ts>
  void ilog(StringRefWithSourceLocation Fmt, Ts &&...Args) const {
    static_cast<const T &>(*this).log(Logger::Info, Fmt,
                                      std::forward<Ts>(Args)...);
  }

  template <typename... Ts>
  void dlog(StringRefWithSourceLocation Fmt, Ts &&...Args) const {
    static_cast<const T &>(*this).log(Logger::Debug, Fmt,
                                      std::forward<Ts>(Args)...);
  }
};

inline void log_redirect(llvm::raw_ostream &OS) { GlobalLogger->Out = &OS; }

inline void log_level(Logger::Level L) { GlobalLogger->CurrentLevel = L; }

} // namespace maskscrape

#endif // MASKSCRAPE_LOG_H
