#lang sicp

(define tolerance 0.0001)

(define (fixed-point f first-guess)
   
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

  (define (try guess)
    (newline)
    (display guess)
    
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (find-root)
  (fixed-point (lambda(x) (/ (log 1000) (log x)))
               2.0))

(define (find-root-avg)
  (fixed-point (lambda(x) (/ (+ (/ (log 1000) (log x)) x) 2))
               2.0))
                 
                 