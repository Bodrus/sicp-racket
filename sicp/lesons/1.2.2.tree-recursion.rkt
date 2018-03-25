#lang racket/base


; В качестве примера рассмотрим вычисление последовательности чисел Фибоначи, в которой
; каждое следующее число является суммой двух предыдущих. 
; fib(n)  (if n = 0 => 0), (if n = 1 => 1) else fib(n -1 ) + fib(n - 2);

(define (fib n)
	(cond ((= n 0) 0)
				((= n 1) 1)
				(else (+ (fib (- n 1)) 
								 (fib (- n 2))))))
;////////////////////////////////////
; iter-recursion
(define (fibon n)
	(iter-fibon 1 0 n))

(define (iter-fibon a b count)
	(if (= count 0)
			b
			(iter-fibon (+ a b) a (- count 1))))