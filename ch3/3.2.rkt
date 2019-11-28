#lang sicp
(define (make-monitored f)
  (let ((count 0))
    (lambda(input)
      (cond ((eq? input 'how-many-calls?) count)
            ((eq? input 'reset-count)
             (begin (set! count 0)
                    count))
            (else (begin
                    (set! count (inc count))
                    (f input)))))))

(define s (make-monitored sqrt))
(s 100)
(s 121)
(s 'how-many-calls?)
(s 'reset-count)
(s 'how-many-calls?)