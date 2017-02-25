(define (mul-interval x y)
  (let ((xl (lower-bound x))
	(xu (upper-bound x))
	(yl (lower-bound y))
	(yu (upper-bound y)))
    (cond ((and (>= xl 0)
		(>= xu 0))
	   (cond ((and (>= yl 0)
		       (>= yu 0))
		  (make-interval (* xl yl) (* xu yu)))
		 ((and (<= yl 0)
		       (>= yu 0))
		  (make-interval (* xu yl) (* xu yu)))
		 ((and (<= yl 0)
		       (<= yu 0))
		  (make-interval (* xu yl) (* xl yu))))
	   ((and (<= xl 0)
		 (>= xu 0))
	    (cond ((and (>= yl 0)
			(>= yu 0))
		   (make-interval (* xl yu) (* xu yu)))
		  ((and (<= yl 0)
			(>= yu 0))
		   (make-interval (min (* xu yl) (* xl yu)) (max (* xl yl) (* xu yu))))
		  ((and (<= yl 0)
			(<= yu 0))
		   (make-interval (* xu yl) (* xl yl)))))
	   ((and (<= xl 0)
		 (<= xu 0))
	    (cond ((and (>= yl 0)
			(>= yu 0))
		   (make-interval (* xl yu) (* xu yl)))
		  ((and (<= yl 0)
			(<= yu 0))
		   (make-interval (* xu yu) (* xl yl)))
		  ((and (<= yl 0)
			(>= yu 0))
		   (make-interval (* xl yu) (* xl yl)))))))))
			
			
		  
		 
			
		  
	   
	   
		 
	   
   
	    
	    
	    
