(define (square x) (* x x))
(define (average a b) (/ (+ a b) 2))
(define tolerance 0.00001)

(define (abs x)
	(cond ((< x 0) (- x))
	      (else x)))

(define (expt b n)
  (exp-iter b n 1))

(define (mod x y)
	(- x (* (floor (/ x y)) y)))

(define (even? x)
	(= (mod x 2) 0))

(define (exp-iter b counter a)
	(cond ((= counter 0) a)
	      ((even? counter) (exp-iter (square b) (/ counter 2) a))
	      (else (exp-iter b (- counter 1) (* a b)))))

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				next
				(try next))))
	(try first-guess))

(define (average-damp f)
	(lambda (x) (average x (f x))))

(define (compose f g)
	(lambda (x)
		(f (g x))))

(define (repeated f n)
	(if (= n 1)
		(lambda (x) (f x))
		(compose f (repeated f (- n 1)))))

(define (sqrt-n x n)
	(fixed-point ((repeated average-damp (- n 2)) (lambda (y) (/ x (expt y (- n 1)))))
		     1.0))


;(sqrt-n 16 4) ; -> 1.98 approx 2