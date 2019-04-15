(define (square x)
  (* x x))

(define (expt b n)
  (exp-iter b n 1))

(define (mod x y)
	(- x (* (floor (/ x y)) y)))

(define (even? x)
  (= (mod x 2) 0))

(define (exp-iter b counter a)
	(cond ((= counter 0) a)
	      ((even? counter) (exp-iter (square b) (/ counter 2) a))
	      (else (exp-iter b (- counter 1) (* a b)))))

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car z)
  (define (help x y)
    (cond ((= (mod x 2) 0) (help (/ x 2) (+ y 1)))
	  (else y)))
  (help z 0))

(define (cdr z)
  (define (help2 x y)
    (cond ((= (mod x 3) 0) (help2 (/ x 3) (+ y 1)))
	  (else y)))
  (help2 z 0))


;(car (cons 1 2)) -> 1
;(cdr (cons 1 2)) -> 2
  
      
 
