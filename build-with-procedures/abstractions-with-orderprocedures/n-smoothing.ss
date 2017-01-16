
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

;;; n smoothed to function f
(define (n-smoothed f n)
	(if (= n 1)
		(lambda (x) (f x))
		(smooth (n-smoothed f (- n 1)))))

;((n-smoothed inc 5) 3) ;-> 4