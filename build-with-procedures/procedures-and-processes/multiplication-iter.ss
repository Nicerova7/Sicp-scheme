(define (double x)
	(* 2 x))

(define (mod x y) ;modular arithmetic
	(- x (* (floor (/ x y)) y)))

(define (even? x) ;is it even?
	(= (mod x 2) 0))

(define (halve x)
	(/ x 2))

(define (multiplication a b) ; a x b
	(multiplication-iter a b 0))

(define (multiplication-iter a b save) ; save is a state variable
	(cond ((= b 0) save)
	      ((even? b) (multiplication-iter (double a) (halve b) save))
	      (else (multiplication-iter a (- b 1) (+ a save)))))

;;; Test
; (multiplication 3 7) -> 21