#lang racket/base

;;; Упражнение 2.27
;;; Измените свою процедуру reverse из упражнения 2.18 так, 
;;; чтобы получилась процедура deep-reverse, которая принимает 
;;; список в качестве аргумента и возвращает в качестве значения список, 
;;; где порядок элементов обратный и подсписки также обращены. Например:

;;; (define x (list (list 1 2) (list 3 4)))

;;; x
;;; ((1 2) (3 4))

;;; (reverse x)
;;; ((3 4) (1 2))

;;; (deep-reverse x)
;;; (2 3 (4 3) (2 1))


(define (deep-reverse items)
	(define (iter l new-list)
		(cond ((null? l) new-list)
					((not (pair? (car l))) (iter (cdr l) 
																 (cons (car l) new-list)))
					(else (iter (cdr l) 
											(cons (deep-reverse (car l)) new-list)))))
	(iter items null))



	

;;; (define (deep-reverse items)
;;; 	(define (iter l new-list)
;;; 		(if (null? l)
;;; 				new-list
;;; 				(if (not (pair? (car l)))
;;; 						(iter (cdr l) (cons (car l) new-list))
;;; 						(iter (cdr l) (cons (deep-reverse (car l)) new-list)))))


;;; 	(iter items null))



; Экспорт процедуры
(provide deep-reverse)

