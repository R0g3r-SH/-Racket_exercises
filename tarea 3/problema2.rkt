#lang racket

#|
 Función que toma una lista lst como entrada.
 Los elementos consecutivos en lst se codifican en listas de la forma:
 e n, donde el elemento e ocurre un n número de veces.
|#

(define (union lst)
  (foldr (lambda (x y)
          (cond
            [(or (empty? y) (not (equal? x (first (first y))))) (cons (list x) y)]
            [else (cons (cons x (first y)) (rest y))]))
         empty lst))

(define (encode lst)
  (foldr (lambda (x y) (append (list (first x) (length x) ) y))
         empty (union lst)))

(encode '(9 9 9 9 7 7))