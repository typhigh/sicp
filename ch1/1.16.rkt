#lang sicp
(define (square x) (* x x))
(define (even? n)
  (= (remainder n 2) 0))

(define (odd? n)
  (not (even? n)))

(define (fast-expt b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
   (cond ((= n 0)
          a)
         ((even? n)
          (expt-iter
           (square b)
           (/ n 2)
           a
           ))
         ((odd? n)
          (expt-iter
           b
           (dec n)
           (* a b)))))
         