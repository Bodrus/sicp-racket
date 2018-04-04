#lang racket/base

;;; Определите процедуру ( reverse ) принимающею список и возвращающею тот же 
;;; список только в обратном порядке

(define (reverse items)
	(define (iter list1 new-list)
		(if (null? list1)
				new-list
				(iter (cdr list1) (cons (car list1) new-list))))
		(iter items null))
		

	(reverse (list 1 2 3 4))
