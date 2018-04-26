#lang racket/base

(define (squere n) (* n n))

; отоброжение
;(map squere (list 1 2 3 4 5 6))


; фильтрация
(define (filter predicate sequence)
	(cond ((null? sequence) null)
				 ((predicate (car sequence)) ; условие сортировки
					(cons (car sequence)
								(filter predicate (cdr sequence))))
				 (else (filter predicate (cdr sequence)))))
; пример
;(filter odd? (list 1 2 3 4 5 6))


; накопление 
(define (accumulate op initial sequence)
	(if (null? sequence)
			initial
			(op (car sequence)
					(accumulate op initial (cdr sequence)))))
; пример
;(accumulate + 0 (list 1 2 3 4 5))

; проход по списку в заданном диапазоне
(define (enumerate-interval low hight)
	(if (> low hight)
			null
			(cons low (enumerate-interval (+ low 1) hight))))

; пример
;(enumerate-interval 2 7)


; процедура перечисления листьев в дереве
(define (enumerate-tree tree)
	(cond ((null? tree) null)
				((not (pair? tree)) (list tree))
				(else (append (enumerate-tree (car tree))
											(enumerate-tree (cdr tree))))))

; example
;(enumerate-tree (list 1 (list 2 (list 3 4)) 5))



; ////////////////////////////////////////////////////////////////
; /// sum-odd-squeres - 
;;; 1. Вычисляем последовательность листьев дерева
;;; 2. Фильтруем ее
;;; 3. Возводим отфильтрованный елем. в квадрат и сумируем результат

(define (sum-odd-squeres tree)
	(accumulate +                  ; что применять к елементу
							0                  ; накопитель
							(map squere 			 ; передаем процедуру в map
									 (filter odd?  ; в фильтр передаем параметр фильтрации
									 				 (enumerate-tree tree))))) ; преобразование дерева в список
									 
(sum-odd-squeres (list 2 3 (list 4 (list 5 6)) 7))


; even-fibs -
;;; 1. перечисляем числа от 0 до n
;;; 2. для каждого числа порождаем число Фибоначи
;;; 3. фильтруем последовательность
;;; 4. собираем результат в список

(define (even-fibs n)
	(accumulate cons
							null
							(filter even?
											(map squere
													 (enumerate-interval 0 n)))))

(even-fibs 10)


;;; ; экспорт процедуры
;;; (provide square-tree)