#lang racket/base
(require "../../../../lib/bace.rkt")


; Создайте абстракцию сегмент и точек.
; Напишите процедуру (midpoint-segment), которая принимает отрезок в качестве аргумента и возвращает его середину
; (точку, координаты которой являются средним координат отрезка)

; Конструктор точки и селекторы для получения
; координат точки
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

; Конструктор отрезка и селекторы для получения
; начальной и конечной точек отрезка
(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

; Процедура вычисления точки на отрезке, являющейся его серединой
(define (midpoint-segment s) 
	(let ((p1 (start-segment s))
			  (p2 (end-segment s)))
		(let ((x-centr-point (average (x-point p1) (x-point p2)))							 
				  (y-centr-point (average (y-point p1) (y-point p2))))
			(make-point x-centr-point y-centr-point))))

; Печать координаты точки
(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))

	
; Экспорт процедур
(provide make-point make-segment midpoint-segment)