#lang racket


#|Método de Newton  algoritmo para encontrar 
la raíz de una función a partir del cálculo de aproximaciones 
sucesivamente |#
#|(require memo)|#
#|funcion deriv anterioirmente urtilzada|#
(define (deriv fun h)
  (lambda (x) (/ (- (fun (+ x h)) (fun x)) h) )
  )

#|(define (newton/memoize fun n)|#
(define (newton f n)
  (define df (deriv f 0.0001))
  (cond
    [(= n 0) 0]
    [else (- (newton f (- n 1)) (/ (f (newton f (- n 1))) (df (newton f (- n 1)) )) )]
    )
  )

(newton (lambda (x) (+ (cos x) (* 0.5 x))) 5)