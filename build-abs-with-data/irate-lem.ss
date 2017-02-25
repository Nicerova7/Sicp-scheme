(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
		(add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
		  (add-interval (div-interval one r1)
				(div-interval one r2)))))


(define a (make-interval-percent 100 5))
(define b (make-interval-percent 200 10))

(par1 a b)
; (52.615384   .   84.0000)
; percent 22.97
(par2 a b)
; (62.18181818   .   71.0769)
; percent 6.675


(define a (make-interval-percent 100 0.01))
(define b (make-interval-percent 200 0.02))

(par1 a b)
; (66.63556  .  66.697784)
; percent 0.04666

(par2 a b)
; (66.65777  .  66.675555)
; percent 0.01333

