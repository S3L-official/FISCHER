#ifndef MASKSCRAPE_ANNOTATION_H
#define MASKSCRAPE_ANNOTATION_H

#include "llvm/IR/Constants.h"
#include "llvm/IR/Module.h"

namespace maskscrape {

struct AnnotationManager {
  const llvm::GlobalVariable *GlobalAnnos;

  AnnotationManager(const llvm::Module &M)
      : GlobalAnnos(M.getNamedGlobal("llvm.global.annotations")) {}

  template <typename F> void Process(F &&f) const {
    if (GlobalAnnos) {
      auto a = cast<llvm::ConstantArray>(GlobalAnnos->getOperand(0));
      for (int i = 0; i < a->getNumOperands(); i++) {
        auto e = cast<llvm::ConstantStruct>(a->getOperand(i));

        if (auto fn =
                dyn_cast<llvm::Function>(e->getOperand(0)->getOperand(0))) {
          auto anno =
              cast<llvm::ConstantDataArray>(
                  cast<llvm::GlobalVariable>(e->getOperand(1)->getOperand(0))
                      ->getOperand(0))
                  ->getAsCString();
          std::forward<F>(f)(fn, anno);
        }
      }
    }
  }

  void InsertToFnAttrs() const {
    Process(
        [](llvm::Function *fn, llvm::StringRef anno) { fn->addFnAttr(anno); });
  }
};

} // namespace maskscrape

#endif // MASKSCRAPE_ANNOTATION_H
