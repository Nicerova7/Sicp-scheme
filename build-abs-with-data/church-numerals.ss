(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))


;(define one (add-1 zero))
;Substitution
;(add-1 zero)
;(lambda (f) (lambda (x) (f ((zero f) x))))
;(lambda (f) (lambda (x) (f ((lambda (x) x) x)))
;(lambda (f) (lambda (x) (f x)))

(define one
  (lambda (f) (lambda (x) (f x))))

;(define two (add-1 one))
;Substitution
;(add-1 one)
;(lambda (f) (lambda (x) (f ((one f) x))))	
;(lambda (f) (lambda (x) (f ((lambda (x) (f x)) x))))
;(lambda (f) (lambda (x) (f (f x))))  
 
(define two
  (lambda (f) (lambda (x) (f (f x)))))


(define (plus a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))))
;Substituion
;(plus two one)
;(lambda (f) (lambda (x) ((two f) ((one f) x))))
;(lambda (f) (lambda (x) ((two f) ((lambda (x) (f x)) x))))
;(lambda (f) (lambda (x) ((two f) (f x))))
;(lambda (f) (lambda (x) ((lambda (x) (f (f x))) (f x))))
;it's diferent from
;(lambda (f) (lambda (x) ((f (f x)) (f x))))

;Example
(define (inc a)
  (+ a 1))

(((plus one two) inc) 5)
; 8

