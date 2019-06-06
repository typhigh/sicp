#lang sicp

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (deep-reverse L)
  (cond ((not (pair? L))
        L)
        ((null? L)
        nil)
        ((null? (cdr L))
         (list (deep-reverse (car L))))
        (else
         (append (deep-reverse (cdr L)) (list (deep-reverse (car L)))))))
        
   
      