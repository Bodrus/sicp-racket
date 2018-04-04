#lang racket/base
; Определите процедуру last-pair, которая возвращает список, содержащий только
; последний элемент данного непустого списка

; Процедура получения последнего элемента списка
(define (last-pair list1)
	(if (null? list1)
						 list1
						 (last-pair (cdr list1))))

; Пробный вызов						 
(define test-list (list 23 72 149 34))
(last-pair test-list)

; Экспорт процедуры
(provide last-pair)
