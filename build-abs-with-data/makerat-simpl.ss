;;;Our rational-number implementation doesn't reduce rational numbers to lowest terms

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (remainder a b)
  (- x (* (floor (/ x y)) y)))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))
