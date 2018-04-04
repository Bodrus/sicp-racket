#lang racket/base

; Выбираем нужный елеммент списка
(define (list-ref items n)
	(if (= n 0)
		  (car items)
			(list-ref (cdr items) (- n 1))))
; Экспорт процедуры
(provide list-ref)

; Проверяем в итеративном стиле кол-во ел. списка
(define (length items)
	(define (iter it count)
		(if (null? it)
				count
				(iter (cdr it) (+ count 1))))
	(iter items 0))
; Экспорт процедуры
(provide length)

	;соединяем 2 списка в один
(define (append list1 list2)
	(if (null? list1)
			list2
			(cons (car list1) (append (cdr list1) list2))))
; Экспорт процедуры
(provide append)