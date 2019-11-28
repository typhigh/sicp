#lang sicp

(define (make-accumulator number)
  (lambda (x)
    (begin (set! number (+ number x))
           number)))

(define A (make-accumulator 5))

(A 10)

(A 10)