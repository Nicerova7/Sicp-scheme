
(define (inc x) (+ x 1))

(define (compose f g)
	(lambda (x)
		(f (g x))))

(define (repeated f n)
	(if (= n 1)
		(lambda (x) (f x))
		(compose f (repeated f (- n 1)))))

(define (smooth f)
	(define dx 0.00001)
		(lambda (x)
			(/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold f n)
	(repeated (smooth f) n))