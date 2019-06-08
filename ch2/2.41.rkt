#lang sicp

(define (map p sequence)
    (accumulate (lambda (x y) 
                    (cons (p x) y)) 
                '()
                sequence))

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (enumerate-interval low high)
    (if (> low high)
        '()
        (cons low (enumerate-interval (+ low 1) high))))

(define (append list1 list2)
    (if (null? list1)
        list2
        (cons (car list1)
              (append (cdr list1) list2))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(define (three-tuples n)
  (flatmap (lambda(x)
             (map (lambda(j) (cons j x))
                  (enumerate-interval 1 n)))
           (unique-pairs n)))

(define (sum3 x)
  (+ (car x) (cadr x) (cadr (cdr x))))

(define (three-sum-n n)
  (filter (lambda(x)
            (and (= n (sum3 x))
                 (not (= (car x) (cadr x)))
                 (not (= (car x) (cadr (cdr x))))
                 (not (= (cadr x) (cadr (cdr x))))))
          (three-tuples n)))