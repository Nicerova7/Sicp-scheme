## Exercise 1.34 

Now we have the following procedure.

```
(define (f g)
(g 2))
```

Exercise gives us two ideas:

```
(f square )
4
```

We do not see any problem with the result, because we replace the "g" function
with "square" then we apply the funcion "square" to the value 2, then 2*2 = 4.


```
(f (lambda (z) (* z (+ z 1))))
6
```

We observe that we have the "lambda" function with which we define a procedure
in which a value is given and multiplication of the same value is generated
with the following (+ z 1).


__What happens if we (perversely) ask the interpreter to evaluate the combination (f f)?__


In the two examples above, the function given to the function "f" has a body in
hich a given operation is given a number, if we pass a function like "f" that has 
only another function and not a procedure ( Operation), is not evaluated correctly so 
no operation is carried out.



