(define (accumulate combiner term a next b)
	(define (iter a result)
		(if (> a b)
			result
			(iter (next a) (combiner result (term a)))))
		(iter (next a) (term a)))

(define (suma a b) (+ a b))
(define (cube x) (* x x x))
(define (inc x) (+ x 1))

;;;Example sum cube

(define (sum-cube a b)
	(accumulate suma cube a inc b))

(sum-cube 1 10)

