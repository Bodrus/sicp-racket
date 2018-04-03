#lang racket/base
(require "../functions/oll.rkt")
(require rackunit)

; Создайте абстракцию сегмент и точек.
; Напишите процедуру (midpoint-segment), которая принимает отрезок в качестве аргумента и возвращает его середину
; (точку, координаты которой являются средним координат отрезка)

(define (make-point x y) (cons x y))
(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment s) (car s))

(define (end-segment s) (cdr s))

(define (midpoint-segment s) 
	(let ((p1 (start-segment s))
			  (p2 (end-segment s)))
		(let ((x-centr-point (overage (x-point p1) (x-point p2)))							 
				  (y-centr-point (overage (y-point p1) (y-point p2))))
			(make-point x-centr-point y-centr-point))))

(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))

	 ;; Testing 
 (define seg (make-segment (make-point 2 3) 
                           (make-point 10 15))) 

  (print-point seg)
  (print-point (midpoint-segment seg)) ; (6,9)
	


 ;(check-equal? (print-point (midpoint-segment seg)) "(6,9)" (printf " test 1 passed"))
