#lang racket/base
; Выбираем нужный елеммент списка
(define (list-ref items n)
	(if (= n 0)
		  (car items)
			(list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))
(list-ref squares 2)

; Проверяем рекурсивно кол-во ел. списка
;;; (define (length items)
;;; 	(if (null? items)
;;; 			0
;;; 			(+ 1 (length (cdr items)))))

; Проверяем в итеративном стиле кол-во ел. списка
(define (length items)
	(define (iter it count)
		(if (null? it)
				count
				(iter (cdr it) (+ count 1))))
	(iter items 0))

(define odds (list 1 2 3 5 8))
(length odds)

;соединяем 2 списка в один
(define (append list1 list2)
	(if (null? list1)
			list2
			(cons (car list1) (append (cdr list1) list2))))

(define list1 (list 1 2 3 ))
(define list2 (list 4 5 6))
(append list1 list2)
