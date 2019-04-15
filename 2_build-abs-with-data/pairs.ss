(define x (cons 1 2)) ; x -> (1 2)
(define y (cons 3 4)) ; y -> (3 4)
(define z (cons x y)) ; z -> ((1 2) (3 4))

(cdr (car z)) ; -> 2


