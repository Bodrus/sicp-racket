#lang racket/base
; Возведение в степень
; b в степени n = b * b(n - 1)
; Порядок роста

(define (expt b n)
	(if (= n 0) 1
		(* b (expt b (- n 1)))))
; //////////////////////////////////////////////////
(define (expt b n) (exp-iter b n 1))

(define (exp-iter b counter prod)
	(if (= counter 0)
			prod
			(exp-iter b 
								(- counter 1) 
								(* b prod))))
; ///////////////////////////////////////////////////////
(define (fast-expt b n)
	(cond ((= n 0) 1)
				((is-even? n) (square (fast-expt b (/ n 2))))
				(else (* b (fast-expt b (- n 1))))))

(define (is-even? n)
	(= (remainder n 2) 0))


