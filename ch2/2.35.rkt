#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (map p sequence)
  (accumulate (lambda (x y)
                (cons (p x) y))
              nil
              sequence))

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda(subtree)
                     (if (pair? subtree)
                         (count-leaves subtree)
                         1))
                   t)))