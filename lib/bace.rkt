#lang racket

; Процедура возводит число 'x' в квадрат
(define (square x) (* x x))
; Экспорт процедуры
(provide square)

; Процедура возводит число 'x' в куб
(define (cube x) (* x x x))
; Экспорт процедуры
(provide cube)

; Процедура вычисляет сумму квадратов чисел 'x' и 'y'
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
; Экспорт процедуры
(provide sum-of-squares)

; Процедура, проверяющая целочисленную делимость числа 'a' на число `b`
(define (divides? a b)
    (= (remainder b a) 0))
; Экспорт процедуры
(provide divides?)

; Процедура увеличивает число `x` на единицу
(define (inc x) (+ x 1))
; Экспорт процедуры
(provide inc)

; Процедура идентации (возвращение переданного ей аргумента)
(define (identity x) x)
; Экспорт процедуры
(provide identity)

; Процедура поиска НОД чисел `a` и `b`
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
; Экспорт процедуры
(provide gcd)

; Процедура получения среднего арифметического между двумя числами
(define (average a b)
  (/ (+ a b) 2))
; Экспорт процедуры
(provide average)

; Процедура получения среднего между `x` и `f(x)`
(define (average-damp f)
  (lambda (x) (average x (f x))))
; Экспорт процедуры
(provide average-damp)

; Процедура вычисления двоичного логарифма
(define (log2 x)
  (/ (log x) (log 2)))
; Экспорт процедуры
(provide log2)