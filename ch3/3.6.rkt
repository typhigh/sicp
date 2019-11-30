#lang sicp

(define random-init 10000009)

(define (rand mode)
  (let ((x random-init))
    (cond ((eq? mode 'generate)
           (begin (set! x (random x))
                  x))
          ((eq? mode 'reset)
           (lambda (new-value)
             (set! x new-value)
             x)))))
  