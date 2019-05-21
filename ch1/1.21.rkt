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