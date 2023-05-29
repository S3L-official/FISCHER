
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
(a_1 (_ BitVec 8))
(a_2 (_ BitVec 8))
(a_3 (_ BitVec 8))
(a_4 (_ BitVec 8))
(b (_ BitVec 8))
(b_1 (_ BitVec 8))
(b_2 (_ BitVec 8))
(b_3 (_ BitVec 8))
(b_4 (_ BitVec 8))
(c (_ BitVec 8))
(c_1 (_ BitVec 8))
(c_2 (_ BitVec 8))
(c_3 (_ BitVec 8))
(c_4 (_ BitVec 8))
(call (_ BitVec 8))
(call1 (_ BitVec 8))
(call16.1187 (_ BitVec 8))
(call16.1.1 (_ BitVec 8))
(call16.2.1 (_ BitVec 8))
(call16.3.1 (_ BitVec 8))
(call16.4.1 (_ BitVec 8))
)
(=>
(and (= c (gf2add (gf2mul a_2 b) (gf2add (gf2add (gf2add (gf2add (gf2add (gf2mul a b) call16.1187) (gf2mul a b_1)) (gf2mul a_1 b)) call16.1.1) (gf2mul a b_2))))
(and (= c_1 (gf2add (gf2mul a_3 b_1) (gf2add (gf2add (gf2add (gf2add (gf2add (gf2mul a_1 b_1) call16.1.1) (gf2mul a_1 b_2)) (gf2mul a_2 b_1)) call16.2.1) (gf2mul a_1 b_3))))
(and (= c_2 (gf2add (gf2mul a_4 b_2) (gf2add (gf2add (gf2add (gf2add (gf2add (gf2mul a_2 b_2) call16.2.1) (gf2mul a_2 b_3)) (gf2mul a_3 b_2)) call16.3.1) (gf2mul a_2 b_4))))
(and (= c_3 (gf2add (gf2mul a b_3) (gf2add (gf2add (gf2add (gf2add (gf2add (gf2mul a_3 b_3) call16.3.1) (gf2mul a_3 b_4)) (gf2mul a_4 b_3)) call16.4.1) (gf2mul a_3 b))))
(and (= c_4 (gf2add (gf2mul a_1 b_4) (gf2add (gf2add (gf2add (gf2add (gf2add (gf2mul a_4 b_4) call16.4.1) (gf2mul a_4 b)) (gf2mul a b_4)) call16.1187) (gf2mul a_4 b_1))))
(and (= call (gf2add (gf2add call (gf2add (gf2add (gf2add (gf2add a a_1) a_2) a_3) a_4)) call))
(and (= call1 (gf2add (gf2add call1 (gf2add (gf2add (gf2add (gf2add b b_1) b_2) b_3) b_4)) call1))
(and (= call16.1187 call16.1187)
(and (= call16.1.1 call16.1.1)
(and (= call16.2.1 call16.2.1)
(and (= call16.3.1 call16.3.1)
(and (= call16.4.1 call16.4.1)
true
))))))))))))
(and (= (gf2mul (gf2add (gf2add call (gf2add (gf2add (gf2add (gf2add a a_1) a_2) a_3) a_4)) call) (gf2add (gf2add call1 (gf2add (gf2add (gf2add (gf2add b b_1) b_2) b_3) b_4)) call1)) (gf2add (gf2add (gf2add (gf2add c c_1) c_2) c_3) c_4))
true
)
)
))
(check-sat-using (then simplify smt))
(get-model)
