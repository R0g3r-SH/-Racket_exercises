; Programa que inserta el valor 'n' en la posicion que va en un lista ordenada.

#lang racket

(define (inserta n lista)
  (cond [(null? lista) (cons n lista)]
        [(<= n (first lista)) (cons n lista)]
        [else (append(cons(first lista) '()) (inserta n (rest lista))) ]
        )
  )


(define (inserta2 n lista)
  (cond [(null? lista) (cons n lista)]
        [(<= n (car lista)) (cons n lista)]
        [else (append(cons(car lista) '()) (inserta n (cdr lista))) ]
        )
  )
