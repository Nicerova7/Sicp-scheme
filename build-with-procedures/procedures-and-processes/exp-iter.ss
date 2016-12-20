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
	      (else (* b (exp-iter b (- counter 1) a)))))


