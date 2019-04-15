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

(define (cuad a b c d) ; a,b,c and d are segments located counterclockwise
  (cons a b c d))

(define (perim c)
  (+ (car c) (car (cdr c)) (car (cdr ( cdr c))) (cdr (cdr (cdr c)))))

(define (area c)
  (* (car c) (car (cdr c))))



