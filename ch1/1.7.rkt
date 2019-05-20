#lang sicp
(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))


(define (good-enough? guess x)
  (> 0.01
     (/ (abs (- x guess))
             guess)))
             

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))