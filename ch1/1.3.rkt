#lang sicp

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (smaller x y)
  (if (< x y)
      x
      y))

(define (bigger x y)
  (if (< x y)
      y
      x))

  
(define (two-larger-squares-sum x y z)
  (sum-of-squares (bigger x y)
                  (bigger z (smaller x y))))
                     
             
     
