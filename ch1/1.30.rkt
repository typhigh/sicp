#lang sicp
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (cube x)
  (* x x x))

(define (inci x)
  (inc x))

(define (sum-cubes a b)
  (sum cube a inci b))