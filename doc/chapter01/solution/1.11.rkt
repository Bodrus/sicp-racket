#lang racket/base
(require rackunit)

; Функция f  определяется правилом: 
; f(n) = n, если n < 3, и
; f(n) = n if n < 3, and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.
; Напишите процедуру, вычисляющую f c помощью рекурсивного и итеративного процесса.

(define (f n)
	(if (< n 3)
			n
			(+ (f(- n 1))
				 (* 2 (f(- n 2))) 
				 (* 3 (f(- n 3))))))







(check-equal? (f 1) 1 )
(check-equal? (f 2) 2 )
(check-equal? (f 3) 4 )
(check-equal? (f 4) 11 )
(check-equal? (f 5) 25 )
(check-equal? (f 6) 59 )
(check-equal? (f 7) 142 (printf "test passed"))