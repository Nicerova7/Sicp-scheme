(define tolerance 0.00001)

(define (fixed-point f first-guess)
	(define (Close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try-guess)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				next
				(try next))))
	(try first-guess))

(define average (lambda (x y) (/ (+ x y) 2)))

(define (abs x)
	(cond ((< x 0) (- x))
		(else x)))

;;; Golden ratio

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)

;1.6180327868852458 -> (1 + sqrt(5))/2 
