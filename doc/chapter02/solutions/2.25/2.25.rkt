#lang racket/base
;;; Упражнение 2.25.
;;; Укажите комбинации car и cdr, которые извлекают 7 из следующих списков:
;;; (1 3 (5 7) 9)
;;; ((7))
;;; (1 (2 (3 (4 (5 (6 7))))))

(define l (list 1 2 (list 5 7) 9))

;1
(car (cdr (car (cdr (cdr l)))))
; 2
(car (car (list (list 7))))
; 3
(define li (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr li))))))))))))
; // или так 

(cadadr (cadadr (cadadr li)))


