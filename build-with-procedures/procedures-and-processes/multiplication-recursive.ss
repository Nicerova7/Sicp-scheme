(define (double x)
	(* 2 x))

(define (mod x y) ;modular arithmetic
	(- x (* (floor (/ x y)) y)))

(define (even? x) ;is it even?
	(= (mod x 2) 0))

(define (halve x)
	(/ x 2))

(define (multiplication-recursive a b)	; a x b
	(cond ((= b 0) b)
	      ((even? b) (double (multplication-recursive a (halve b))))
	      (else (+ a (multiplication-recursive a (- b 1))))))

;;; Test
; (multiplication-recursive 3 4) -> 12