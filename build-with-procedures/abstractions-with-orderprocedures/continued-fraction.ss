(define (cont-frac n d k)
	(define (fraccion-i i)
		(if (< i k)
			(/ (n i) (+ (d i) (fraccion-i (+ i 1)))))
			(/ (n i) (d i)))
	(fraccion-i 1.0))

(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	    10)

;0.6179775280898876 -> 1/aureo
	