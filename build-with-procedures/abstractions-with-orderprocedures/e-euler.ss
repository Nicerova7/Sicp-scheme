(define (cont-frac n d k)
	(define (fraccion-i i acc)	;acc -> accumulated
		(let ((j (+ 1 (- k i))))
			(if (> j 0)
				(fraccion-i (+ i 1) (/ (n j) (+ acc (d j))))
				acc)))
	(fraccion-i 1 0))


(define (remainder a b)
	(- a (* (floor (/ a b)) b)))

;;; e (base of the natural logarithms)
(+ 2 (cont-frac (lambda (i) 1.0)
		(lambda (i)
			(if (= (remainder i 3) 2)
			(* 2 (/ (+ i 1) 3))
			1))
		23))