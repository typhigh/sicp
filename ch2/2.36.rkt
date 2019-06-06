#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (map p sequence)
    (if (null? sequence)
        '()
        (cons (p (car sequence))
              (map p (cdr sequence)))))

(define (accumulate-n op init segs)
  (if (null? (car segs))
      nil
      (cons (accumulate op
                        init
                        (map (lambda(x) (car x)) segs))
            (accumulate-n op
                          init
                          (map (lambda(x) (cdr x)) segs)))))


   