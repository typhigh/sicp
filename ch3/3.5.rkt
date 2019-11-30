#lang sicp
(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
           (/ trials-passed trials))
          ((experiment)
           (iter (- trials-remaining 1) (+ trials-passed 1)))
          (else
           (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))

(define (estimate-integeral p? x1 y1 x2 y2 trials)
  (* 4.0
     (monte-carlo trials
                  (lambda() (p? (random-in-range x1 x2)
                                (random-in-range y1 y2))))))

(define (square x) (* x x))
(define (esitmate-pi trials)
  (estimate-integeral (lambda (x y)
                       (< (+ (square x)
                             (square y))
                          1.0))
                     -1.0
                     -1.0
                     1.0
                     1.0
                     trials))

(esitmate-pi 10000000)