(define (square x)
	(* x x))

(define (mod x y) ;modular arithmetic
	(- x (* (floor (/ x y)) y)))

(define (divides? a b) ;is it even?
	(= (mod b a) 0))

(define (smallest-divisor n)
	(find-divisor n 2))

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
	      ((divides? test-divisor n) test-divisor)
	      (else (find-divisor n (+ test-divisor 1)))))

;;; Tests
;(smallest-divisor 199)   -> 199
;(smallest-divisor 1999)  -> 1999
;(smallest-divisor 19999) -> 7