#lang racket/base
(provide add cube abs gcd overage)

(define (add a b) (+ a b))

(define (cube x) (* x x x))

(define (abs x) 
	(if (< x 0)
			(- x)
			 x))

(define (gcd a b)
	(if (= b 0)
			a
			(gcd b (remainder a b))))

(define (overage a b) (/ (+ a b) 2))