#lang racket/base
(provide add cube abs)

(define (add a b) (+ a b))
(define (cube x) (* x x x))
(define (abs x) 
	(if (< x 0)
			(- x)
			 x))

