#lang racket/base
(require rackunit)

;;; Если f это численная функция, и n это положительное целое число, то мы можем 
;;; сформировать n-ное применение функции f: это функция, 
;;; чье значение для х равно f(f(...(f(x))...)).

;;; Например, если f это функция x = x + 1, то n-ное применение функции f это x = x + n. 
;;; Если f это операция возведения во вторую степень, 
;;; то n-ное применение функции f это возведение в степень 2^n.

;;; В файле repeated.rkt создайте процедуру, которая принимает в качестве аргумента 
;;; другую процедуру (которая вычисляет f), и целое положительное число n; и возвращает процедуру, 
;;; которая вычисляет n-ное применение функции f. В итоге вашу процедуру 
;;; можно будет использовать следующим образом:

;;; ((repeated square 2) 5)
;;; 625

(define (square x) (* x x))
(define (inc x) (+ x 1))

 (define (iter acc f arg)
	(if (= acc 1) 
			(f arg)
			(iter (- acc 1) f (f arg))))
	
(define (repeated f count) 
  (lambda (n) (iter count f n) ))


	
;;; (define (compose f g)
;;;  (lambda (x) (f (g x))))

;;; (define (repeated f x)
;;;   (if (= x 1)
;;;       f
;;;       (compose f (repeated f (- x 1)))))

(check-equal? ((repeated inc 2) 5) 7)
(check-equal? ((repeated inc 10) 10) 20)
(check-equal? ((repeated square 2) 5) 625)
(check-equal? ((repeated square 3) 3) 6561)