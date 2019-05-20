#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (odd? n)
  (not (even? n)))

(define (fast-mul a b)
  (cond ((= a 0) 0)
        ((even? a)
         (fast-mul (/ a 2)
                   (+ b b)))
        ((odd? a)
         (+ b
            (fast-mul (dec a) b)))))
                     
                       