#lang sicp

(define (square n)
  (* n n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (divides? i n)
  (= 0 (remainder n i)))

(define (find-divisor n i)
  (cond ((> (square i) n) n)
        ((divides? i n) i)
        (else (find-divisor n (inc i)))))

(define (prime? x)
  (= x (smallest-divisor x)))

(define (filter-accumulate filter combiner null-value term a next b)

  (define (get-value x)
    (if (filter x)
        (term a)
        null-value))

  (if (> a b)
      null-value
      (combiner (get-value a)
                (filter-accumulate filter
                                   combiner
                                   null-value
                                   term
                                   (next a)
                                   next
                                   b))))

(define (sum-prime a b)

  (define (identity x) x)

  (filter-accumulate prime? + 0 identity a inc b))