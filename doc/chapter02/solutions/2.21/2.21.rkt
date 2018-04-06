#lang racket/base


;;; Упражнение 2.21.
;;; Процедура square-list принимает в качестве аргумента список чисел и 
;;; возвращает список
;;; квадратов этих чисел.
;;; (square-list (list 1 2 3 4))
;;; (1 4 9 16)
;;; Перед Вами два различных определения square-list. 
;;; Закончите их, вставив пропущенные выражения:

;//////////////////////////
;;; (define (square-list items)
;;; (if (null? items)
;;; nil
;;; (cons ?? ??)))

;;; (define (square-list items)
;;; (map ?? ??))
;//////////////////////////
(define (square-list items)
	(if (null? items)
		null
		(cons ((lambda (x) (* x x)) (car items))
					(square-list (cdr items)))))



;;; (define (square-list items)
;;; 	(map (lambda (n) (* n n )) items))

(square-list (list 1 2 3 4))

; экспорт процедуры
(provide square-list)