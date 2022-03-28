#lang racket


#|
  Funcion que devuelve una lista con los índices 
  donde se encuentran todas ocurrencias de x en lst 
|#

(define (linear-search   lst x y [u 0])
  (cond
  ;lista vacia ? retorna '()
    [(empty? lst ) '()]
     ;psoteror vacia ? retorna '()
    [(null?(cdr lst)) 
    (if(y (car lst) x)
    (cons u '()) '())]
    ;trae el indice y retorna recursivamente '()
    [(y (car lst) x) (cons u (linear-search   (cdr lst)  x y(+ 1 u))) ]
    [else (linear-search  (cdr lst) x  y (+ 1 u))]
    )
  )


(linear-search  '(a b c d e f g h) 'h equal?)