


;(define (chale n lst)
;(cond
;[(null? (cdr lst)) '()]
;[(zero? (modulo (car lst) n)) (cons (car lst) (chale n (cdr lst))) ]
;[else (chale n (cdr lst))]
;)
; )




#lang racket

(define (filtra-divisibles  n lst)
  (cond
    [(null?(cdr lst)) (if(zero? (modulo (car lst) n))
                         (cons(car lst) '())'())]
    [(zero? (modulo (car lst) n)) (cons (car lst) (filtra-divisibles  n (cdr lst))) ]
    [else (filtra-divisibles  n (cdr lst))]
    )
  )

(filtra-divisibles 7 '(14))
(filtra-divisibles 4 '(4 8 28 431 42 84 7))