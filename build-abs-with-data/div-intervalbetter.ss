(define (div-interval x y)
  (cond ((and (<= (lower-bound y) 0) (>= (upper-bound y) 0))
	 (newline)
	 (display "Error interval spans zero"))
	(else (mul-interval x
			    (make-interval (/ 1.0 (upper-bound y))
					   (/ 1.0 (lower-bound y)))))))

	 
	  
