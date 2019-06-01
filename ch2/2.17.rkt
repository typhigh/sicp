#lang sicp
(define (last-pair L)
  (cond ((null? L)
         (error "empty list"))
        ((null? (cdr L))
         (car L))
        (else
         (last-pair (cdr L)))))
         
      