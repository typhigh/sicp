#lang sicp

(define (circle? x)
  (let ((vis '()))
    (define (helper x)
      (cond ((not (pair? x)) #false)
            ((memq x vis) #true)
            (else
             (begin
               (set! vis (cons x vis))
               (helper (cdr x))))))
    (helper x)))
            
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))

(define (make-circle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-circle (list 'a 'b 'c 'd)))
(circle? (list 'a 'b 'c 'd))
(circle? z)