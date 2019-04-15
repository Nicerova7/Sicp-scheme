## Exercise 1.13

__Prove that Fib(n) is to closest integer to \phi^n / \sqrt{5} where \phi = (1 + \sqrt{5})/2__.


_Proof_: 

We will use a Ross Honsberger lemma from the book [Mathematical Gems](https://www.amazon.com/exec/obidos/ISBN=0883853019/ctksoftwareincA/)

__Lema__

```
For any solution x of x^2 - x - 1 = 0, x^n = xF_n + F_{n-1}, n >= 1
```

For induction and remebering that F_1 = 1 , F_0 = 0

_k=1_
```
	 x^1 = xF_1 + F_0
	 x = x
```

_k=2_
```
	 x^2 = xF_2 + F_1
	 x^2 = x + 1  
	 then this is correct for the given proposition 
```
_k=n_
```	
It is assumed that
	x^n = xF_n + F_{n-1}  ....(1)

Then we  have to reach k = n+1
From (1) multiplied by x
	
	x^{n+1} = x^2 F_n + xF_{n-1}
	x^{n+1} = (x+1) F_n + xF_{n-1}  For the initial proposition
	x^{n+1} = x( F_n + F_{n-1} ) + F_n
	x^{n+1} = x( F_{n+1} ) + F_n   For the fibonnaci sequence
	
	then , the inducction is concluyed
```

### Proof of Binet's formula

By the lemma above and knowing that the roots of the equation are \phi and \varphi 

```
\phi^n = \phi F_n + F_{n-1} ... (2)
\varphi^n = \varphi F_n + F_{n-1} ... (3)

(2) less (3) and solving

F(n) = \frac{\phi^n - \varphi^n}{\phi - \varphi}
```

And as when "n" increases, \varphi decreases
Fib(n) is to closest integer to \phi^n / \sqrt{5}

	
	

### References

<https://www.uam.es/personal_pdi/ciencias/gallardo/cap10-fgs1.pdf>

<http://www.cut-the-knot.org/proofs/BinetFormula.shtml>
	

	




