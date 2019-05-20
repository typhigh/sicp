#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (odd? n)
  (not (even? n)))

(define (fast-mul a b)
  (mul-iter a b 0))

(define (mul-iter a b ret)
  (cond ((= a 0)
         ret)
        ((even? a)
         (mul-iter
          (/ a 2)
          (+ b b)
          ret
          ))
        ((odd? a)
         (mul-iter
          (dec a)
          b
          (+ ret b)))))