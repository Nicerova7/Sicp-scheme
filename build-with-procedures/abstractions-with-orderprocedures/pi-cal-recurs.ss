;;; The given formula can be accomodated as follows
;;; pi / 2 = ( 2/1 * 2/3 ) (4/3 * 4/5) (6/5 * 6/7)
;;; In general
;;; pi / 2 = product ( 2n/(2n-1) * 2n/(2n+1) )

(define (prod term a next b)
	(if (> a b)
		1
		(* (term a) (product term (next a) next b))))

(define (add x) (+ x 1))
(define (f x) (+ (/ 1 (- (* 4 x x) 1)) 1))

(define (pi-cal n)
	(* 2 (prod f 1 add n)))

;pi-cal 1000) -> 3.1408077460304042