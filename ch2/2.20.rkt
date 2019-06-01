#lang sicp

(define (filter f L)
  (cond ((null? L)
         L)
        ((f (car L))
         (cons (car L)
               (filter f (cdr L))))
        (else
         (filter f (cdr L)))))

(define (even? x)
  (= 0 (remainder x 2)))

(define (odd? x)
  (= 1 (remainder x 2)))


(define (same-parity sample . others)
  (filter (if (even? sample)
              even?
              odd?)
          (cons sample others)))



 