(define (abs x)
  (if (< x 0)
      (- x)
       x))
     
(define (cube x)
  (* x x x))

(define (square x) 
  (* x x))

(define (improve guess x)
  (/ (+ (* 2 (cube guess)) x) (* 3 (square guess))))
  
  
(define (good-enough? guess x) 
  (< (abs (- (cube guess) x)) 0.001))

(define (sqrtree guess x)
  (if (good-enough? guess x)
      guess 
      (sqrtree (improve guess x) x)))
    
(define (root-cube x) 
  (sqrtree 1.0 x))
