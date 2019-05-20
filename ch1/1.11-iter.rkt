#lang sicp
(define (f n)
  (if (< n 3)
      n
      (dof n 0 1 2 2)))


(define (dof n a b c i)
  (if (= i n)
      c
      (dof n
           b
           c
           (+ (* 3 a)
              (* 2 b)
              c)
           (inc i))))