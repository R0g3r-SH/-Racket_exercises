#lang racket
#|

  La función que toma dos entradas: un objeto x y una lista lst. 
  Devuelve una nueva lista con todas las formas 
  posibles en que se puede insertar x dos veces en cada posición de lst.
|#

(define (insert-everywhere-twice x lst)
  (define (prepend a) (lambda (as) (cons a as)))
  ; si la lista es null segresa x list 2 veces
  (if (null? lst)
      (list (list x x))
        ; unimos doblemente el valor de x en la poscicion actual de la lista
      (cons (cons x  (cons x  lst))
            (map (prepend (car lst))
        ;Llamamos recursivamente y avancamos al siguiente valor en la lista
                (insert-everywhere-twice x  (cdr lst)))
            )))

(insert-everywhere-twice 'x '(1 2 3 4 5 6 7 8 9 10))