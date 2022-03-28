#lang racket

(define (factorial num)
;si fnum = 0 regresa1
  (if (= num 0) 1
;si no recuresion en num -1
      (* num (factorial(- num 1)))))

(factorial 19)