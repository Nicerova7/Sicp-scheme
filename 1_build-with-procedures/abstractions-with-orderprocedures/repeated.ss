(define (square x) (* x x))

(define (inc x) (+ x 1))

(define (compose f g)
	(lambda (x)
		(f (g x))))

(define (repeated f n)
	(if (= n 1)
		(lambda (x) (f x))
		(compose f (repeated f (- n 1)))))

; ((repeated inc 3) 4)    ; -> 7
; ((repeated square 2) 5) ; -> 625
