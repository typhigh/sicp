#lang sicp
(define (count-pairs x)
  (if (not (pair? x))
      0
      (+ (count-pairs (car x))
         (count-pairs (cdr x))
         1)))


(define v1 '(1 2 3))
v1
(count-pairs v1)

(define x '(1))
(define v2 (list (cons x x)))
v2
(count-pairs v2)

(define y (cons x x))
(define v3 (cons y y))
v3
(count-pairs v3)