#lang racket/base

;;; (define (sum-integers a b)
;;; 	(if (> a b)
;;; 			0
;;; 			(+ a (sum-integers (+ a 1) b))))

;;; (define (sum-cubes a b)
;;; 	(if (> a b)
;;; 			0
;;; 			(+ (cube a) (sum-sum-cubes (+ a 1) b))))

;;; (define (sum term a next b)
;;; 	(if (> a b) 
;;; 			0 
;;; 			(+ (term a) (sum term (next a) next b))))

(define (sum term a next b)
	(define (iter a result)
		(if (> a b)
				result
				(iter (next a) (+ result (term a)))))
	(iter a 0))

(define (sum-cubes a b)
	( sum cube a next b))

(define (cube x) (* x x x))
(define (next x) (+ x 1))

(sum-cubes 2 3)