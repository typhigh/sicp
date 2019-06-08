#lang sicp
(define (equal? x y)
  (cond ((and (symbol? x) (symbol? y))
         (eq? x y))
        ((and (list? x) (list? y))
         (list-eq? x y))
        (else #f)))

(define (list-eq? x y)
  (cond ((and (not (null? x)) (not (null? y)))
         (and (equal? (car x) (car y))
              (equal? (cdr x) (cdr y))))
        ((and (null? x) (null? y))
         #t)
        (else
         #f)))
         