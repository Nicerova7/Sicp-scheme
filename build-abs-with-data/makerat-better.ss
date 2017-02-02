(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (remainder a b)
  (- x (* (floor (/ x y)) y)))

(define (make-rat n d)
  (let ((g gcd n d)))
    (cond ((and (< n 0) (< d 0)) (cons )
