#lang racket

;comentario
; () se les llma lista en racket eleemtos separados con espacios

#|
    Comentario de varias lineas
    wwwii
    wiii
|#

; definiciones de constantes
(define num 42)
(define pi 3.1419)
; funciones

(define suma(+ 2 3))

;media a,b  -> (a+b)/2

(define (media a b)
  (/ (+ a b) 2))

(define (sumar a b c)
(+ a b c))

(sumar 3 4 5)

; Tipos de datos y tipos de datos especiales
    