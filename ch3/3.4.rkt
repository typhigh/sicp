#lang sicp
(define (make-account balance password)

  (let ((wrong-account 0))
    (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))

    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)

    (define (display-wrong useless-arg)
      (begin (set! wrong-account (inc wrong-account))
             (if (>= wrong-account 7) "call-the-cops"
                 "Incorrect password")))
              
    (define (dispatch pw mode)
      (if (eq? pw password)
          (begin (set! wrong-account 0)
                 (cond ((eq? mode 'withdraw) withdraw)
                       ((eq? mode 'deposit) deposit)
                       (else (error "Unknown request -- MAKE-ACCOUNT" mode))))
          display-wrong))
    dispatch))

(define acc (make-account 100 'typhigh))
((acc 'typhigh 'withdraw) 40)

((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'other-password 'deposit) 50)
((acc 'typhigh 'withdraw) 40)
((acc 'other-password 'deposit) 50)