(define (make-interval-percent c p)
  (make-interval (- c (/ (* c p) 100))
		 (+ c (/ (* c p) 100))))
