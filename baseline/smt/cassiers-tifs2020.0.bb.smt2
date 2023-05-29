
(define-fun gf2add ((a (_ BitVec 8)) (b (_ BitVec 8))) (_ BitVec 8)
  (bvxor a b)
)

(define-fun gf2mul-cnt ((a (_ BitVec 8)) (b (_ BitVec 8)) (n (_ BitVec 8))) (_ BitVec 8)
  (ite (= #b1 ((_ extract 0 0) (bvlshr b n))) (bvshl a n) #x00)
)
(define-fun gf2mul ((a (_ BitVec 8)) (b (_ BitVec 8))) (_ BitVec 8)
  (bvxor
    (gf2mul-cnt a b #x00)
  (bvxor
    (gf2mul-cnt a b #x01)
  (bvxor
    (gf2mul-cnt a b #x02)
  (bvxor
    (gf2mul-cnt a b #x03)
  (bvxor
    (gf2mul-cnt a b #x04)
  (bvxor
    (gf2mul-cnt a b #x05)
  (bvxor
    (gf2mul-cnt a b #x06)
    (gf2mul-cnt a b #x07)
  )))))))
)
(assert (forall
(
(a (_ BitVec 8))
(b (_ BitVec 8))
(c (_ BitVec 8))
(call (_ BitVec 8))
(call1 (_ BitVec 8))
)
(=>
(and (= c (gf2mul a b))
(and (= call (gf2add (gf2add call a) call))
(and (= call1 (gf2add (gf2add call1 b) call1))
true
)))
(and (= (gf2mul (gf2add (gf2add call a) call) (gf2add (gf2add call1 b) call1)) c)
true
)
)
))
(check-sat-using (then bit-blast smt))
(get-model)
