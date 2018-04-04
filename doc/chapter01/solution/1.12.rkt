#lang racket/base
(require rackunit)

;;; 	Cоздайте процедуру, которая принимает координаты в 
;;; виде пары чисел (строка и колонка) и вычисляет элементы Треугольника Паскаля 
;;; с помощью рекурсивного процесса.
;;; 	Например, число на третьей строке и второй колонке – 2, 
;;; так что вызов (pascal-triangle 3 2) должен возвращать 2.

(define (pascal-triangle row col)
  (cond ((> col row) 0)
    ((< col 0) 0)
      ((= col 1) 1)
        ((+ (pascal-triangle (- row 1) (- col 1))
          (pascal-triangle (- row 1) col)))))


(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 2) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)