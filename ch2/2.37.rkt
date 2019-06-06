#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (Map p sequence)
    (if (null? sequence)
        '()
        (cons (p (car sequence))
              (Map p (cdr sequence)))))

(define (accumulate-n op init segs)
  (if (null? (car segs))
      nil
      (cons (accumulate op
                        init
                        (Map (lambda(x) (car x)) segs))
            (accumulate-n op
                          init
                          (Map (lambda(x) (cdr x)) segs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (Map (lambda(row) (dot-product row v)) m))

(define (transpose mat)
  (accumulate-n cons nil mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (Map (lambda(row-of-m)
           (matrix-*-vector cols row-of-m))
         m)))