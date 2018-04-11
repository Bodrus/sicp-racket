#lang racket/base

(require rackunit "2.27.rkt")

(check-equal? (deep-reverse (list 1 2 3 4)) (list 4 3 2 1) (printf "test#1 2.18 passed\n"))
(check-equal? (deep-reverse (list 1 4 9 16 25)) (list 25 16 9 4 1) (printf "test#2 2.18 passed\n"))
(check-equal? (deep-reverse (list 1 (list 2 3) 4)) (list 4 (list 3 2) 1) (printf "test#3 2.18 passed\n"))
(check-equal? (deep-reverse (list (list 1 2 ) (list 3 4))) (list (list 4 3) (list 2 1)) (printf "test#3 2.18 passed\n"))
