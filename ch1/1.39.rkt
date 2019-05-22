#lang sicp

(define (cont-frac-rec n d k)

  (define (do-cont-frac n d k i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i)
              (do-cont-frac n d k (inc i))))))

  (do-cont-frac n d k 1))

(define (tan-cf x k)
  (cont-frac-rec (lambda(i)
                   (if (= 1 i)
                       x
                       (- (* x x))))
                 (lambda(i) (dec (* 2 i)))
                 k))

