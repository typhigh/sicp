#lang sicp

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (tree-map f x)
  (map (lambda(t)
         (if (pair? t)
             (tree-map f t)
             (f t)))
       x))
(define (square x)
  (* x x))
(define (square-tree tree) (tree-map square tree))


             
      
     