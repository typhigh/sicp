#lang sicp
(define (make-account balance password)

  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)

  (define (display-wrong useless-arg)
    (display "Incorrect password"))

  (define (dispatch pw mode)
    (if (eq? pw password)
        (cond ((eq? mode 'withdraw) withdraw)
              ((eq? mode 'deposit) deposit)
              (else (error "Unknown request -- MAKE-ACCOUNT" mode)))
        display-wrong))
  dispatch)

(define acc (make-account 100 'typhigh))
((acc 'typhigh 'withdraw) 40)

((acc 'other-password 'deposit) 50)