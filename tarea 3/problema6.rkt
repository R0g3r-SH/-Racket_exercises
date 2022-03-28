#lang racket

#|la función coseno que recibe un valor real x y un valor entero n y 
devuelve el valor aproximado de coseno(x). |#

(define (factorial num)
  ;si fnum = 0 regresa1
  (if (= num 0) 1
      ;si no recuresion en num -1
      (* num (factorial(- num 1)))))


(define (coseno x n)
  (cond
  ;si n= 1 retorna 1
    [(= n 0) 1]
    ; de otramanera aplica el siguiente modelo amtematico recursivo
    [else (+ (coseno x ( - n 1)) ( * ( / (expt -1 n) (factorial(* 2 n))) (expt x ( * 2 n))  ))]

    ))



(coseno 10.0 18)