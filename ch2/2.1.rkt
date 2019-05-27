#lang sicp
(define (gcd x y)
  (if(= y 0)
     x
     (gcd y (remainder x y))))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (make-rat x y)
  (if (< y 0)
      (make-rat (- x) (- y))
      (let ((g (gcd (abs x) y)))
        (cons (/ x g) (/ y g)))))