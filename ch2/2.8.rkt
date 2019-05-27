#lang sicp

(define (make-interval x y)
  (cons x y))

(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))


(define (sub-interval x y)
  (cons (- (lower-bound x) (upper-bound y))
        (- (upper-bound x) (lower-bound y))))

