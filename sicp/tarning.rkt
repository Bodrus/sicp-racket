#lang racket/base

(define size 5)

(* (+ 2 (* 4 6))
    (+ 3 5 7)
    size)

(define (squere x) (* x x))

(squere 5)
(squere (squere 3))

(define (sum-of-squere x y) 
  (+ (squere x) (squere y)))

;(printf "sum-of-squere ")(sum-of-squere 2 2)

;/////////////////////
(define (f a)
  (sum-of-squere (+ a 1) (* a 2)))
;//////////// Условия ///////////
(define (abs x) 
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abc x)
  (cond ((< x 0) (- x))
        (else x)))  
                                                        
(define (abs x)
	(if (< x 0)
			(- x)
			x))
;/////////// and or not ////////
(define (>= x y)
	(or (> x y) (= x y)))
;//////////////////////








        
