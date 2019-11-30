#lang sicp
(define (count-pairs x)
  (let ((counted '()))
    (define (count x)
      (if (or (not (pair? x)) (memq x counted))
          0
          (begin
            (set! counted (cons x counted))
            (+ 1
               (count (car x))
               (count (cdr x))))))
  (count x)))
            


(define v1 '(1 2 3))
v1
(count-pairs v1)

(define x '(1))
(define v2 (list (cons x x)))
v2
(count-pairs v2)

(define y (cons x x))
(define v3 (cons y y))
v3
(count-pairs v3)
                    
          