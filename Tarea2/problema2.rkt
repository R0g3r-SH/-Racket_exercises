#lang racket

(define (remueve n lst)
  [cond ((empty? lst) lst)
        ((= (car lst) n) (remueve n (cdr lst)))
        (else (append (list (car lst)) (remueve n (cdr lst))))])

(remueve 8 '(4 8 28 431 4 8 7))

