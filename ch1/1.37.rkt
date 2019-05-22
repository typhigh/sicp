#lang sicp

(define (cont-frac-rec n d k)

  (define (do-cont-frac n d k i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i)
              (do-cont-frac n d k (inc i))))))

  (do-cont-frac n d k 1))

(define (cal-split-rec)
  (cont-frac-rec (lambda(i) 1.0)
                 (lambda(i) 1.0)
                 100))


(define (cont-frac-iter n d k)

  (define (do-cont-frac n d k i result)
    (if (< i 1)
        result
        (do-cont-frac n
                      d
                      k
                      (dec i)
                      (/ (n i)
                         (+ (d i) result)))))

  (do-cont-frac n d k k 0))

(define (cal-split-iter)
  (cont-frac-iter (lambda(i) 1.0)
                  (lambda(i) 1.0)
                  100))

