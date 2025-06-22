; Attempted to prove sortedness and permutation equivalenc (last two conjectures)
; with vampire --input_syntax smtlib2 --mode portfolio -sched struct_induction -t 60 selection-sort.smt2
; Also used the schedules induction and struct_induction_tip, none of these worked.

; Lists
(declare-datatype list ((Nil) (Cons (Cons_0 Int) (Cons_1 (list)))))

; head
(declare-fun head (list) Int)
(assert (forall ((x Int) (xs list)) (= (head (Cons x xs)) x)))

; tail
(declare-fun tail (list) list)
(assert (forall ((x Int) (xs list)) (= (tail (Cons x xs)) xs)))

; in
(define-fun-rec in ((x Int) (xs list)) Bool
   (match xs ((Nil false)
              ((Cons y ys) (or (= x y) (in x ys))))))

; min
(declare-fun min (list) Int)
(assert (forall ((x Int)) (= (min (Cons x Nil)) (x))))
(assert (forall ((x Int) (xs list)) (=> (not (= xs Nil)) (= (min (Cons x xs)) (ite (< x (min xs)) (x) (min xs)))))) 

; remove
(define-fun-rec remove ((x Int) (xs list)) list
(match xs ((Nil Nil) 
           ((Cons y ys) (ite (= x y) ys (Cons y (remove x ys)))))))

; Sortedness
(define-fun-rec list_ge_elem ((xs (list)) (y Int)) Bool
  (match xs ((Nil true)
             ((Cons z zs) (and (not (< z y)) (list_ge_elem zs y))))))

(define-fun-rec sorted ((xs (list))) Bool
  (match xs ((Nil true)
             ((Cons z zs) (and (list_ge_elem zs z) (sorted zs))))))

; Permutation Equivalence
(define-fun-rec filter_eq ((x Int) (xs list)) list
  (match xs ((Nil Nil)
            ((Cons y ys) (ite (= y x) (Cons y (filter_eq x ys)) (filter_eq x ys))))))

; select
(define-fun-rec select' ((xs list)) list
(match xs ((Nil Nil)
           ((Cons y ys) (let ((z (min (Cons y ys)))) (Cons z (remove z (Cons y ys))))))))

; selection-sort
(define-fun-rec selection-sort ((xs list)) list
(match xs ((Nil Nil)
            ((Cons y ys) (let ((l (select' (Cons y ys)))) (Cons (head l) (selection-sort (tail l))))))))


; Minimum of a list is an element of that list, this could be proven
(assert (forall ((xs list)) (=> (not (= xs Nil)) (in (min xs) xs))))

; permutation equivalence lemma
; (assert-not (forall ((x Int) (y Int) (ys list)) (= (filter_eq x (Cons y ys)) (filter_eq x (select' (Cons y ys))))))

; permutation equivalence
(assert-not (forall ((x Int) (xs list)) (= (filter_eq x xs) (filter_eq x (selection-sort xs)))))

; sortedness lemma
; (assert-not (forall ((xs list)) (=> (sorted xs) (sorted (select' xs)))))

; sortedness
; (assert-not (forall ((xs list)) (sorted (selection-sort xs))))

; tests

; (assert-not (= (selection-sort (Cons 2 (Cons 1 Nil))) (Cons 1 (Cons 2 Nil))))
; (assert-not (= (select' (Cons 3 (Cons 2 (Cons 1 Nil)))) (Cons 1 (Cons 3 (Cons 2 Nil)))))
; (assert-not (= (filter_eq 1 (Cons 3 (Cons 2 (Cons 1 Nil)))) (filter_eq 1 (select' (Cons 3 (Cons 2 (Cons 1 Nil)))))))

