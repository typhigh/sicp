#lang sicp

(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car x)
  (if (= 0 (remainder x 2))
      (inc (car (/ x 2)))
      0))

(define (cdr x)
  (if (= 0 (remainder x 3))
      (inc (cdr (/ x 3)))
      0))