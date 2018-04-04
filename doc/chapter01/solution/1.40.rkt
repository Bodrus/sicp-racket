#lang racket/base
(require rackunit)

;(newtons-method (cubic a b c) 1)

(define (cubic a b c)
	(lambda (x) 
		(+ (* x x x)
			 (* a (* x x))
			 (* b x)
			 c)))