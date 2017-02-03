(define (average x y)
  (/ (+ x y) 2))

(define (make-segment a b)
  (cons a b))

(define (start-point n)
  (car n))

(define (end-point n)
  (cdr n))

(define (make-point x y)
  (cons x y))

(define (x-point n)
  (car n))

(define (y-point n)
  (cdr n))

(define (midpoint-segment n)
  (let ((m (start-point n))
	(n (end-point n)))
    (make-point (average (x-point m) (x-point n))
		(average (y-point m) (y-point n)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;Example
;print-point (midpoint-segment (make-segment (make-point 0 1) (make-point 0 3)))) -> (0,2)

  
 
