#lang racket/base
; Определите процедуру last-pair, которая возвращает список, содержащий только
; последний элемент данного непустого списка

(define (last-pair list1)
	(if (null? (cdr list1))
						 list1
						 (last-pair (cdr list1))))
(define test-list (list 23 72 149 34))
(last-pair test-list)






;Test (last-pair (list 23 72 149 34)  (34)