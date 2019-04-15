## Exercise 2.13

> ...Assuming that all numbers are positive.

 We will use the last exercise (2.12)

 [a , b]  has p1 (percent), c1 (center) and w1 (widt).
 [c , d]  has p2, c2 and w2.

```
 [a,b] x [c,d] = [ac,bd]

 [ac,bd] has p3 and c3 and w3.

 p3 = ((bd - ac)*100)/(bd + ac)
 
 p1 + p2 = (b-a)*100/(a+b)   +   (d-c)*100/(d+c)
         = (100 * (db-ac))/((bd+ac+ad+bc) / 2)


 Since p1 and p2 are very small , a ~ b  and c ~ d.

         = (100 * (db-ac))/((bd+ac+aC+bD) / 2)   (The capital letters are the new letters).
	 = (100 * (db-ac))/(bd+ac).

         =  ... it's p3.

```
