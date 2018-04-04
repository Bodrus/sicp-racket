#lang racket/base
(require "fun.rkt")
(require "../chapter01/1.2.5.gcd.rkt")
(require rackunit)

(define (make-rat n d)
	(let ((g (gcd n d)))
		(if (and (< d 0) (> n 0))
				(cons (/ (- n) (abs g)) (abs (/ d g)))
				(cons (/ n g) (abs (/ d g))))))


(define (number pair) (car pair))
(define (denom pair) (cdr pair))

(define (print-rat pair)
	(newline)
	(display (number pair))
	(display "/")
	(display (denom pair)))

; операции над рациональными числами
(define (add-rat x y)
	(make-rat (+ (* (number x) (denom y))
							 (* (number y) (denom x)))
						(* (denom x) (denom y))))

(define (sub-rat x y)
	(make-rat (- (* (number x) (denom y))
							 (* (number y) (denom x)))
						(* (denom x) (denom y))))

(define (mul-rat x y)
	(make-rat (* (number x) (number y))
						(* (denom x) (denom y))))

(define (div-rat x y)
	(make-rat (* (number x) (denom y))
						(* (denom x) (number y))))

(define (equal-rat? x y)
	(= (* (number x) (denom y))
		 (* (number y) (denom x))))
;//// использование /////
;;; (define one-half (make-rat 1 2))
;;; (print-rat one-half)

;;; (define one-third (make-rat 1 3))
;;; (print-rat one-third)

;;; (print-rat (add-rat one-half one-third))
;;; (print-rat (mul-rat one-half one-third))
;;; (print-rat (add-rat one-third one-third))

 ;; Testing 
 (print-rat (make-rat 6 9)) ; 2/3 
 (print-rat (make-rat -6 9)) ; -2/3 
 (print-rat (make-rat 6 -9)) ; -2/3 
 (print-rat (make-rat -6 -9)) ; 2/3 


	
	
