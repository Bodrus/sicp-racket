#lang racket/base
(require rackunit)

; Вычисление факториала линейно итеративный процесс

;;; (define (factorial n)
;;; 	(fact-iter 1 1 n))

;;; (define (fact-iter product counter max-count)
;;; 	(if (> counter max-count)
;;; 			product
;;; 			(fact-iter (* product counter)
;;; 								 (+ counter 1)
;;; 								 max-count)))
;/////////////////////////////////////////////////////////

(define (factorial n)
	(define (iter product counter)
		(if (> counter n)
				product
				(iter (* product counter)
							(+ counter 1))))
	(iter 1 1))

	(factorial 6)




(check-equal? (factorial 6) 720 (printf " test 1 passed"))
