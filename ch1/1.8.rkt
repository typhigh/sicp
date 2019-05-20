#lang sicp
(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))


(define (good-enough? guess x)
  (> 0.00001
     (/ (abs (- x guess))
             guess)))
             

(define (average x y)
  (/ (+ x y) 2))

(define (improve3 guess x)
  (+ (* 2 guess)
     (/ x
        (square guess))))

(define (improve guess x)
  (/
   (improve3 guess x)
   3))

(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
          guess
          (cube-iter (improve guess x)
                     x)))

(define (cube x)
  (cube-iter 1.0 x))