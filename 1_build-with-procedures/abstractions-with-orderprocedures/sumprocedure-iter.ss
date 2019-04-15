(define (sum term a next b)
	(define (iter a result)
		(if  (> a b)
		      result
		      (iter (next a) (+ result (term a)))))
		(iter (next a) (term a)))

;;; Example sum cubes
(define (inc n) (+ n 1))
(define (cube x) (* x x x))

(define (sum-cubes a b)
  (sum cube a inc b))

;(sum-cube 1 10) -> 3025
