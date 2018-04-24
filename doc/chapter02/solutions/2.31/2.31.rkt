#lang racket/base
;;; Упражнение 2.31
;;; Абстрагируйте свой ответ на упражнение 2.30, получая процедуру tree-map, 
;;; так, чтобы square-tree можно было определить следующим образом:

;;; (define (square-tree tree) (tree-map square tree))

; Процедура возведения в квадрат
(define (square item) (* item item))

; Процедура применения переданной процедуры к каждому элементу дерева
(define (tree-map func items)
	(map (lambda (sub-tree)
					(if (pair? sub-tree)
							(tree-map func sub-tree)
							(func sub-tree)))
				items))


(define (square-tree tree) (tree-map square tree))


; экспорт процедуры
(provide square-tree)