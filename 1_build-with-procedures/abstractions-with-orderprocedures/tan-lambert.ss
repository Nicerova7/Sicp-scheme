(define (cont-frac n d k)
	(define (fraccion-i i)
		(if (< i k)
			(/ (n i) (- (d i) (fraccion-i (+ i 1))))  ; modified sign
			(/ (n i) (d i))))
	(fraccion-i 1.0))

(define (tan-cf x k)
	(cont-frac (lambda (i)
			(cond ((= i 1) x)
			      (else (* x x))))
		   (lambda (i) (+ 1 (* 2 (- i 1))))
		    
		    k))

; (tan-cd 0.785 77) -> (tan 45° 77) -> 0.9992039901050428 aprox 1