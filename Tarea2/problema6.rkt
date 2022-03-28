#lang racket


(define (cos x n)
  (if (= n 0)
  (1) 
  ((cos x (- n 1 )))) 

  )



(cos)