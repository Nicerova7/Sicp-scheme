(define (accumulate combiner null-value term a next b)
	(if (> a b)
		null-value
		(combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (suma a b)
	(+ a b))

(define (cube x) (* x x x))
(define (inc x) (+ x 1))

;;; Example sum cube

(define (sum-cube a b)
	(accumulate suma 0 cube a inc b))

; (sum-cube 1 10) -> 3025
