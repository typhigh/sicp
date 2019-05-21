#lang sicp

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
(define (odd? x)
  (= 1 (remainder x 2)))

(define (simpson f a b n)

  (define h (/ (- b a) n))

  (define (y k)
    (f (+ a (* k h))))
  
  (define (arg k)
    (cond ((or (= k 0) (= k n))
           1)
          ((odd? k)
           4)
          (else
           2)))
           
  (define (term  k)
    (* (arg k)
       (y k)))

  (* (/ h 3.0)
     (sum term 0 inc n)))