#lang sicp
(define (reverse L)
  (define (reverse-iter L ans)
    (if (null? (cdr L))
        (cons (car L) ans)
        (reverse-iter (cdr L) (cons (car L) ans))))

  (if (null? L)
      L
      (reverse-iter L (list))))
      
