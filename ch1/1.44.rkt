#lang sicp

(define (square x) (* x x))
(define (compose f g)
  (lambda(x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (dec n)))))

(define (smooth f)

  (define dx 0.000001)

  (lambda(x)
    (/ (+ (f x)
          (f (+ x dx))
          (f (- x dx)))
       3)))

(define (smooth-ntimes f n)
  (repeated (smooth f) n))