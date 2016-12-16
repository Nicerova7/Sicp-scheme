(define (square x)
 (* x x))

(define (abs x) 
  (if (< x 0) 
 	(- x)
	 x))

(define (average x y)
 (/ (+ x y) 2))

(define (improve guess x)
 (average guess (/ x guess)))


(define (good_enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
(if  (good_enough? guess x)
	guess
     (sqrt-iter (improve guess x) x)))

(define (sqroot x) 
   (sqrt-iter 1.0 x))
 
 (sqroot 4)