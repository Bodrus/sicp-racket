#lang racket/base
(require "../functions/oll.rkt")

(define (number pair) (car pair))
(define (denom pair) (cdr pair))

(define (make-rat n d)
	(let ((g (gcd n d)))
		(if (and (< d 0) (> n 0))
				(cons (/ (- n) (abs g)) (abs (/ d g)))
				(cons (/ n g) (abs (/ d g))))))

(define (print-rat pair)
	(newline)
	(display (number pair))
	(display "/")
	(display (denom pair)))

 ;; Testing 
 (print-rat (make-rat 6 9)) ; 2/3 
 (print-rat (make-rat -6 9)) ; -2/3 
 (print-rat (make-rat 6 -9)) ; -2/3 
 (print-rat (make-rat -6 -9)) ; 2/3 