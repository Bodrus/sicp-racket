#lang racket/base
(require rackunit)
; Определите процедуру, которая принимает на вход три числа и возвращает сумму квадратов двух
; больших из них

(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))
	




(check-equal? (sum-of-squares-of-top-two 1 2 3) 13 (printf " test 1 passed"))
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25 (printf " test 2 passed"))
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41 (printf " test 3 passed"))
