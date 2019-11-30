#lang sicp
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))

(define (make-circle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-circle (list 'a 'b 'c 'd)))
(last-pair z) ;endless loop