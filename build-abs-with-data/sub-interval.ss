(define (sub-interval a b) ; a - b
  (cond ((> (lower-bound a) (lower-bound b))
	 (make-interval (lower-bound a) (upper-bound b)))
	((< (lower-bound a) (lower-bound b))
	 (make-interval (lower-bound a) (lower-bound b)))
	(else
	 (cond ((> (upper-bound a) (upper-bound b))
		(make-interval (upper-bound b) (upper-bound a)))
	       (else (make-interval 0 0))))))
	
