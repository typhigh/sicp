#lang sicp

(define (circle? x)
  (define (helper first second)
    (if (or (not (pair? first)) (not (pair? (cdr first))))
        #false
        (let ((nfirst (cdr (cdr first)))
              (nsecond (cdr second)))
          (if (eq? nfirst nsecond)
              #true
              (helper nfirst nsecond)))))
  (helper x x))
          
            
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