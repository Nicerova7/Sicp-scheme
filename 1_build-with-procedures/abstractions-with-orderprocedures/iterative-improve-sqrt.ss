(define (square x) (* x x))

(define (abs x)
	(cond ((< x 0) (- x))
	       (else x)))

(define (average a b) (/ (+ a b) 2))

(define (iterative-improve good-enough? improve-guess)
	(lambda (guess x)
		(if (good-enough? guess x)
		     guess
		     ((iterative-improve good-enough? improve-guess) (improve-guess guess x) x))))

;;;1.1.7 sqrt

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.0001))

(define (improve guess x)
	(average guess (/ x guess)))

(define (sqrt x)
	((iterative-improve good-enough? improve) 1.0 x))

;(sqrt 4) ;-> 2.0000000929222947
