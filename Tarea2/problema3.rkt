#lang racket

(define (suma-consecutivos  lst)
  (if (null? (cdr lst)) '()
      (cons (+ (first lst) (second lst))

            (suma-consecutivos  (cdr lst))
            
            
            )
            
            ))

(suma-consecutivos  '(4 8 2 31 7))