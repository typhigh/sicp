#lang sicp

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (square-tree x)
  (map (lambda(t)
         (if (pair? t)
             (square-tree t)
             (* t t)))
       x))

             
      
     