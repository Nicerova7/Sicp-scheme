;;; We can write a procedure to compute the number of ways to change any
;;; given amount of money.
;;; We use recursive procedure

(define (count-change mount)
	(cc amount 5))	;5 kinds of coins (1,2,5,10,20)

(define (cc amount kinds-of-coins)
	(cond ((= amount 0) 1) ;if amount is exactly 0,we should count that as 1 way to make change.
	      ((or (< amount 0) (= kinds-of-coins 0)) 0) 
	      (else (+ (cc amount (- kinds-of-coins 1)) (cc (- amount (first-denomination kinds-of-coins))

(define (first-denomination kinds-of-coins) 
	(cond ((= kinds-of-coins 1) 1)
	      ((= kinds-of-coins 2) 2)
	      ((= kinds-of-coins 3) 5)
	      ((= kinds-of-coins 4) 10)	
              ((= kinds-of-coins 5) 20)))


	 