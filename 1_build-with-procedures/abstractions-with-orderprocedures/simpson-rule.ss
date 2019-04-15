(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a) (sum term (next a) next b))))

(define (simpson f a b n)
	(define h (/ (- b a) n))
	(define (add x) (+ x 2))
	(define (new x) (f (+ a (* x h))))
	(* (/ h 3) (+ (* 4 (sum new 1 add (- n 1))) (* 2 (sum new 2 add (- n 2))) (f a) (f b))))

(define (cube x) (* x x x))

;;; n is odd
;(simpson cube 0 1 100)  -> 0.25000000000000006
;(simpson cube 0 1 1000) -> 0.25000000000000002
