#lang racket/base
;if another wmodul - (require rackunit "name.file")
(require rackunit)

(define (solution a b) (+ a b))
          
(printf "Результат - ") (solution 10 5)


(check-equal? (solution 2 2 ) 4)
(check-equal? (solution 5 5 ) 10 (printf "test 1.3 passed"))

