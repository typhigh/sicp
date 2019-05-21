#lang sicp

(define (odd? x)
  (= 1 (remainder x 2)))

(define (product-rec term a next b)
  (if (> a b)
      0
      (* (term a) (product-rec term (next a) next b))))

(define (product-iter term a next b result)
  (if (> a b)
      result
      (product-iter term (next a) next b (* result (term a)))))

(define (factorial n)
  (define (term x) x)
  (product-iter term 1 inc n 1))

(define (cal-pi n)

  (define (term k)

    (define (terma k)
      (if (odd? k)
          (+ k 1)
          (+ k 2)))
    
    (define (termb k)
      (if (odd? k)
          (+ k 2)
          (+ k 1)))
    (/ (* 1.0 (terma k)) (termb k)))

  (* 4.0 (product-iter term 1 inc n 1))) 