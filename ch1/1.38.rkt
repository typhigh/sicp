#lang sicp

(define (cont-frac-rec n d k)

  (define (do-cont-frac n d k i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i)
              (do-cont-frac n d k (inc i))))))

  (do-cont-frac n d k 1))

(define (cal-euler-2)
  (cont-frac-rec (lambda(i) 1.0)
                 (lambda(i)
                   (if (= 0 (remainder (inc i) 3))
                       (* (/ 3 (inc i)) 2)
                       1))
                 100))
