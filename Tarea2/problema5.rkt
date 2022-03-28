
#lang racket

(define (invierte-pares lst)
(cond
    
    [(null?(cddr lst))  (append (list (second lst)) (list (first lst)) )]

    [else  (append   (append (list (second lst)) (list (first lst))  (invierte-pares ( cddr lst) ) )) ]
    )
)

(invierte-pares '(4 8 28 431 42 84 71 22))