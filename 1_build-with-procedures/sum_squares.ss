(define (sumsquares x y) 
      (+ (* x x) (* y y)))

(define (sq x y z)
  (cond ((and (> x y) (> y z)) (sumsquares x y)) 
        ((and (> y x) (> z x)) (sumsquares y z))
        ((and (> x y) (> z y)) (sumsquares x z))))