#lang racket/base
(require rackunit)

;;; (define (sqrt x)
;;; 	(define (good-enought? guess x)
;;; 		(< (abc (- (squere guess) x)) 0.001))
;;; 	(define (impruve guess x)
;;; 		(average guess (/ x guess)))
;;; 	(define (sqrt-iter guess x)
;;; 		(if (good-enought? guess x)
;;; 				guess
;;; 				(sqrt-iter (impruve guess x) x)))
;;; 	(sqrt-iter 1.0 x))
;///////////////////////////////////////////////

	(define (sqrt x)
	(define (good-enought? guess)
		(< (abc (- (squere guess) x)) 0.001))
	(define (impruve guess)
		(average guess (/ x guess)))
	(define (sqrt-iter guess)
		(if (good-enought? guess)
				guess
				(sqrt-iter (impruve guess))))
	(sqrt-iter 1.0 x))



