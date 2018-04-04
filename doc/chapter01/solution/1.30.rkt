#lang racket/base

(define (sum-cubes a b)
	(sum cube a next b))

(define (sum term a next b)
	(define (iter a result)
		(if (> a b)
				result
				(iter (next a) (+ result (term a)))))
	(iter a 0))

(define (cube x) (* x x x))
(define (next x) (+ x 1))

(sum-cubes 2 3)