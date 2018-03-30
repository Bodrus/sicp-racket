#lang racket/base

;;; (define (True a b) a)
;;; (define (False a b) b)
;;; (define (If c a b) (c a b)) 

;;; (If True "first" "second")
;;; (If False "first" "second")

;;; (define (f a)(+ a 1))

;;; (define (fff fun)
;;; 	(lambda (x) (lambda (y) (+ y (fun x)))))

;;; (define main ((fff f) 2))
;;; (main 2)

;;; (define (f x y)
;;; 	((lambda (a b)
;;; 		(+ (* x a)
;;; 			 (* y b)
;;; 			 (* a b)))
;;; 	 (+ x y)
;;; 	 (* x y)))

(define (f x y)
	(let ((a (+ x y))
				(b (* x y)))
		(+ (* x a)
			 (* y b)
			 (* a b))))

(f 2 2)