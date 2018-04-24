#lang racket/base

;;; Упражнение 2.29
;;; Бинарный мобиль состоит из двух ветвей, левой и правой. Каждая ветвь представляет собой 
;;; стержень определенной длины, с которого свисает либо гирька, либо еще один бинарный мобиль.
;;;  Мы можем представить бинарный мобиль в виде составных данных, соединив две ветви 
;;;  (например, с помощью list):

;;; (define (make-mobile left right)
;;;   (list left right))

;;; Ветвь составляется из длины length (которая должна быть числом) и структуры structure,
;;;  которая может быть либо числом (представляющим простую гирьку), либо еще одним мобилем:

;;; (define (make-branch length structure)
;;;   (list length structure))

;;; а. Напишите соответствующие селекторы left-branch и right-branch, 
;;; которые возвращают левую и правую ветви мобиля, а также branch-length и 
;;; branch-structure, которые возвращают компоненты ветви.

;;; б. С помощью этих селекторов напишите процедуру total-weight, 
;;; которая возвращает общий вес мобиля.

;;; в. Говорят, что мобиль сбалансирован, если момент вращения, действующий 
;;; на его левую ветвь, равен моменту вращения, действующему на правую ветвь
;;;  (то есть длина левого стержня, умноженная на вес груза, свисающего с него, 
;;;  равна соответствующему произведению для правой стороны), и если все подмобили, 
;;;  свисающие с его ветвей, также сбалансированы. Напишите предикат, который проверяет 
;;;  мобили на сбалансированность.

;;; г. Допустим, мы изменили представление мобилей, так что конструкторы теперь 
;;; приняли такой вид:

;;; (define (make-mobile left right)
;;;   (cons left right))

;;; (define (make-branch length structure)
;;;   (cons length structure))

;;; Как много Вам нужно изменить в программах, чтобы перейти на новое представление?


; Конструкторы
(define (make-mobile left right)
   (list left right))

(define (make-branch length structure)
  (list length structure))


; селекторы
(define (left-branch mobile) 
	(car mobile))

(define (right-branch mobile) 
	(cadr mobile))

(define (branch-length branch) 
	(car branch))

(define (branch-structure branch)
	(cadr branch))


; Отдельный вес ветки
(define (branch-weight branch)
	(let ((structure (branch-structure branch)))
		(if (pair? structure)
				(total-weight structure)
				structure)))

; Общий вес мобиля
(define (total-weight mobile)
	(+ (branch-weight (left-branch mobile))
		 (branch-weight (right-branch mobile))))



; проверка баланса
(define (isbalanced? mobile)
	(if (= (torque-branch (left-branch mobile))
				 (torque-branch (right-branch mobile)))
			





; Экспорт процедуры
(provide make-branch
         make-mobile
         left-branch
         right-branch
         branch-length
         branch-structure
         total-weight
         isbalanced?)