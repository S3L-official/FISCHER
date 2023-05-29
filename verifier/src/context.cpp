#include <context.hpp>

#include <llvm/Support/CommandLine.h>

using namespace llvm;
using namespace maskscrape;

static cl::opt<bool> Unicode("unicode", cl::desc("allow unicode output"),
                             cl::init(true));

static cl::alias UnicodeA("u", cl::aliasopt(Unicode));

namespace maskscrape {

bool IsUnicode() { return Unicode; }

} // namespace maskscrape
