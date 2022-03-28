#lang racket

#|Función que toma f y h como entradas, 
y devuelve una nueva función que toma x como argumento,
 y que representa la derivada de f dado un cierto valor de h.|#

(define f (lambda (x) (* x x x)))
(define (deriv fun h)
  (lambda (x) (/ (- (fun (+ x h)) (fun x)) h) )
  )




(define df (deriv f 0.001))
(define ddf (deriv df 0.001))
(define dddf (deriv ddf 0.001))

(df 5)
(ddf 5)
(dddf 5)