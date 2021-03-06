#lang racket/base
;;; Упражнение 2.30
;;; Определите процедуру square-tree, подобную процедуре square-list из упражнения 2.21. 
;;; А именно, square-tree должна вести себя следующим образом:

;;; (square-tree
;;;   (list 1
;;;         (list 2 (list 3 4) 5)
;;;         (list 6 7)))

;;; (1 (4 (9 16) 25) (36 49))
;;; Определите square-tree как прямо (то есть без использования процедур высших порядков), 
;;; так и с помощью map и рекурсии.

(define (square-tree tree)
	(cond ((null? tree) null)
				((not (pair? tree)) (* tree tree))
				(else (cons (square-tree (car tree))
										(square-tree (cdr tree))))))

(define (square-tree2 tree)
	(map (lambda (sub-tree)
					(if (pair? sub-tree)
							(square-tree2 sub-tree)
							(* sub-tree sub-tree)))
			 tree))




(provide square-tree
				 square-tree2)