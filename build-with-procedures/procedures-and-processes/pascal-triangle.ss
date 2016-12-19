;;;(x+y)^n
;;;row x and col y in triangle

(define (pas-iter x y)
  (cond ((and (= y 0) (> x (- 1))) 1)
	((and (= x 0) (> y 0)) 0)
	(else (+ (pas-iter (- x 1) (- y 1)) (pas-iter (- x 1) y)))))

;;;For the ubication in the Pascal's triangle
(define (pascal a b)
 (pas-iter (- a 1) (- b 1)))

;;;Test
;(pascal 4 2) -> 3