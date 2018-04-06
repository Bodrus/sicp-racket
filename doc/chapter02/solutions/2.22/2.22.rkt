#lang racket/base
(require "../../../../lib/bace.rkt")
;;; Упражнение 2.22.
;;; Хьюго Дум пытается переписать первую из процедур square-list из упражнения 2.21 так,
;;; чтобы она работала как итеративный процесс:

;;; (define (square-list items)
;;; 	(define (iter things answer)
;;; 		(if (null? things)
;;; 				answer
;;; 				(iter (cdr things)
;;; 							(cons (square (car things))
;;; 										answer))))
;;;   (iter items null))

;;; К сожалению, такое определение square-list выдает список результатов в порядке, обратном
;;; желаемому. Почему?
;;; Затем Хьюго пытается исправить ошибку, обменяв аргументы cons:

;;; (define (square-list items)
;;; (define (iter things answer)
;;; (if (null? things)
;;; answer
;;; (iter (cdr things)
;;; (cons answer
;;; (square (car things))))))
;;; (iter items nil))
;;; И так программа тоже не работает. Объясните это.

; Решение
;;; В первом случае, при интеративном процессе значение добовляются в зеркальном
;;; порядке. Дня идентичной последовательности нужно конечный список answer
;;; вернуть c применением процедуры реверса.

