#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;A[x][y] = A[x-1][A[x][y-1]]
;A[x][0] = 0, A[x][1] = 2
;A[0][y] = 2y

(define (f n) (A 0 n))
(define (g n) (A 1 n))
;A[1][n] = A[0][A[1][n-1]] = 2A[1][n-1] = 2 ^ n
(define (h n) (A 2 n))
;A[2][n] = A[1][A[2][n-1]] = 2 ^ (A[2][n-1])
(define (k n) (* 5 n n))