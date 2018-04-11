#lang racket/base
;;; Напишите процедуру fringe, которая берет в качестве аргумента дерево 
;;; (представленное в виде списка) и возвращает список, элементы которого – все листья дерева, 
;;; упорядоченные слева направо. Например,

;;; (define x (list (list 1 2) (list 3 4)))

;;; (fringe x)
;;; (1 2 3 4)

;;; (fringe (list x x))
;;; (1 2 3 4 1 2 3 4)

; Итеративно
(define (fringe items)
	(define (iter l new-list)
		(cond ((null? l)  new-list)
					((not (pair? (car l))) (iter (cdr l) 
																       (cons (car l) new-list)))
					(else (iter (cdr l)
											(append (fringe (car l)) new-list)))))
	(iter (reverse items) `()))
	
; /////////////////////////////////////////////////////////
; ////////////////////////////////////////////////////////

; Рекурсивно
(define (fringe tree)
  (if (null? tree)
      `()
      (if (pair? tree)
          (append (fringe (car tree)) (fringe (cdr tree)))
          (list tree))))


 


; Экспорт процедуры
(provide fringe)