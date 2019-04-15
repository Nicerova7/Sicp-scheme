## Exercise 2.9

> Case add-interval

 [A,B] + [C,D] = [A + C, B + D]
  w1       w2        w3

```
  w1 = (B-A)/2
  w2 = (D-C)/2

  w1 + w2 = ((B + D) - (A + C))/2  ... = w3 = ((B + D) - (C + A))/2
```  

> Case dif-interval

 [A,B] - [C,D] = [A - D, B - C]
  w1       w2  	      w3

```
  w1 = (B-A)/2
  w2 = (D-C)/2

  w1 + w2 = ((B + D) - (A + C))/2  ... = w3 = ((B + D) - (C + A))/2
``` 

> Case mult-interval

 _Counterexample_.

  [2 . 4] x [4 . 6] = [8 . 24]
    w1 	       w2       w3

```
    w1 = 1
    w2 = 1

    w1 * w2 = 1 ... it isn't w3.
```

> Case div-interval

  [3 . 6] x [4 . 8] = [3/8 . 3/2]
     w1        w2         w3
 
```
   w1 = 0.375
   w2 = 1.5

   w1 * w2 = 0.5625 ... it isn't w3.
```
  



 
