;;;(x+y)^n
;;;row x and col y in triangle

(define (pas-rec x y)
  (cond ((and (= y 0) (> x (- 1))) 1)
	((and (= x 0) (> y 0)) 0)
	(else (+ (pas-rec (- x 1) (- y 1)) (pas-rec (- x 1) y)))))

;;;For the ubication in the Pascal's triangle
(define (pascal a b)
 (pas-rec (- a 1) (- b 1)))

;;;Test
;(pascal 4 2) -> 3