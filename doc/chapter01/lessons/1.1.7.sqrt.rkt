#lang racket/base
(require rackunit)

;Пример вычисления квадратного корня методом Ньютона

(define (sqrt-iter quess x)
	(if (good-enough? quess x) 
			quess
			(sqrt-iter (inprove guess x) x)))

(define (inprove guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ a b) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.01))


(define (square x) (* x x))

(define (abs x)
	(if (< x 0)
		(- x)
		x))

; main function
(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 9)