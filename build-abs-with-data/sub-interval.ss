(define (sub-interval a b) ; a - b
  (cond ((> (lower-bound a) (lower-bound b))
	 (make-interval (lower-bound a) (upper-bound b)))
	((< (lower-bound a) (lower-bound b))
	 (make-interval (lower-bound a) (lower-bound b)))))
