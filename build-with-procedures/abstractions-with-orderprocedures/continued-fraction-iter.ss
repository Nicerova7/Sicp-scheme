(define (cont-frac n d k)
	(define (fraccion-i i acc)	;acc -> accumulated
		(let ((j (+ 1 (- k i))))
			(if (> j 0)
				(fraccion-i (+ i 1) (/ (n j) (+ acc (d j))))
				acc)))
	(fraccion-i 1 0))