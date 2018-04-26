#lang racket/base
(require (only-in "../../../../lib/list.rkt"
                  accumulate))

;;; Заполните пропущенные выражения, так, чтобы получились определения 
;;; некоторых базовых операций по работе со списками в виде накопления:

;;; (define (map p sequence)
;;;   (accumulate (lambda (x y) 〈??〉 ) nil sequence))

;;; (define (append seq1 seq2)
;;;   (accumulate cons 〈??〉 〈??〉 ))

;;; (define (length sequence)
;;;   (accumulate 〈??〉 0 sequence))


; Отображение последовательности
(define (map p sequence)
	(accumulate (lambda (x y) (cons (p x) y)) null sequence))

; Объединение последовательностей
(define (append seq1 seq2)
	(accumulate cons seq2 seq1))

; Длина последовательности
(define (length sequence)
	(accumulate (lambda (x y) (+ 1 y)) 0 sequence))

; Экспорт процедур
(provide map append length)