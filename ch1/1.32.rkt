#lang sicp

(define (odd? x)
  (= 1 (remainder x 2)))

(define (accumulate-rec combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate-rec
                          combiner
                          null-value
                          term
                          (next a)
                          next
                          b))))

(define (sum-rec term a next b)
  (accumulate-rec + 0 term a next b))

(define (product-rec term a next b)
  (accumulate-rec * 1 term a  next b))

;(sum-rec + 1 inc 10)
;(product-rec * 1 inc 4)