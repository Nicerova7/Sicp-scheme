(define (square x) (* x x))

(define (abs x)
	(cond ((< x 0) (- x))
	       (else x)))

(define (average a b) (/ (+ a b) 2))

(define (iterative-improve good-enough? improve-guess)
	(lambda (guess x)
		(if (good-enough? guess (x guess))
		     guess
		     ((iterative-improve good-enough? improve-guess) (improve-guess guess x) x))))

;;;1.3.3 fixe-point

(define (close-enough? v1 v2)
	(< (abs (- v1 v2)) 0.0001))

(define (improve guess x)
	(x guess))

(define (fixed-point x first-guess) ; x is a function
	((iterative-improve close-enough? improve) first guess x))

;(fixed-point cos 1.0) ; ->  0.7390893414033928
