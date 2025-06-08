; Unfortunately, there does not seem to be a way to include SMTLIB files in another files
; So, we will end up with one giant file, let us begin


; Lists
(declare-datatype list ((Nil) (Cons (Cons_0 Int) (Cons_1 (list)))))

; in
(declare-fun in (Int list) Bool)
(assert (forall ((x Int)) (not (in x (Nil)))))
(assert (forall ((x Int) (y Int) (ys (list))) (= (in x (Cons y ys)) (or (= x y) (in x ys)))))

; min
(declare-fun min (list) Int)
(assert (forall ((x Int)) (= (min (Cons x Nil)) (x))))
(assert (forall ((x Int) (xs list)) (=> (not (= xs Nil)) (= (min (Cons x xs)) (ite (< x (min xs)) (x) (min xs)))))) 

; remove
(declare-fun remove (Int list) list)
(assert (forall ((x Int)) (= (remove x Nil) Nil)))
(assert (forall ((x Int) (y Int ) (ys list)) (= (remove x (Cons y ys)) (ite (= x y) ys (Cons y (remove x ys))))))


; (assert-not (= (min (Cons 1 (Cons 0 Nil))) 0))
; (assert-not (forall ((xs list)) (=> (not (= xs Nil)) (in (min xs) xs))))

; Sortedness
(define-fun-rec list_ge_elem ((xs (list)) (y Int)) Bool
  (match xs (((Nil) true)
             ((Cons z zs) (and (not (< z y)) (list_ge_elem zs y))))))

(define-fun-rec sorted ((xs (list))) Bool
  (match xs (((Nil) true)
             ((Cons z zs) (and (list_ge_elem zs z) (sorted zs))))))

; Permutation Equivalence
(define-fun-rec filter_mset ((x Int) (xs list)) list
  (match xs ((Nil Nil)
            ((Cons y ys) (ite (= y x) (Cons y (filter_mset x ys)) (filter_mset x ys))))))

(assert-not (forall ((xs list)) (=> (not (= xs Nil)) (in (min xs) xs))))
;(declare-fun select (list) list)
;(assert (forall (x Int) (xs List) (= (select (Cons x xs)) (Cons (min (Cons x xs))))))


