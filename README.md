# finite groups package
Pretty print info about finite algebraic groups.<br>
Supported finite groups: additive and multiplicative groups congruent modulo n.<br>
Usage: sbcl --script group-type n<br>
groups.lisp and driver.lisp should be in the same directory.<br>
Example runs.<br>
<pre>
sbcl --script driver.lisp additive 10
Z10 = (0 1 2 3 4 5 6 7 8 9)
|Z10| = 10

Cayley Table
 + 0 1 2 3 4 5 6 7 8 9
 0 0 1 2 3 4 5 6 7 8 9
 1 1 2 3 4 5 6 7 8 9 0
 2 2 3 4 5 6 7 8 9 0 1
 3 3 4 5 6 7 8 9 0 1 2
 4 4 5 6 7 8 9 0 1 2 3
 5 5 6 7 8 9 0 1 2 3 4
 6 6 7 8 9 0 1 2 3 4 5
 7 7 8 9 0 1 2 3 4 5 6
 8 8 9 0 1 2 3 4 5 6 7
 9 9 0 1 2 3 4 5 6 7 8

Z10 is Abelian.
Z10 is cyclic.

cyclic subgroups
<0> = (0)
<1> = (1 2 3 4 5 6 7 8 9 0)
<2> = (2 4 6 8 0)
<3> = (3 6 9 2 5 8 1 4 7 0)
<4> = (4 8 2 6 0)
<5> = (5 0)
<6> = (6 2 8 4 0)
<7> = (7 4 1 8 5 2 9 6 3 0)
<8> = (8 6 4 2 0)
<9> = (9 8 7 6 5 4 3 2 1 0)

|<0>| = 1 	|Z10|/|<0>| = 10
|<1>| = 10 	|Z10|/|<1>| = 1
|<2>| = 5 	|Z10|/|<2>| = 2
|<3>| = 10 	|Z10|/|<3>| = 1
|<4>| = 5 	|Z10|/|<4>| = 2
|<5>| = 2 	|Z10|/|<5>| = 5
|<6>| = 5 	|Z10|/|<6>| = 2
|<7>| = 10 	|Z10|/|<7>| = 1
|<8>| = 5 	|Z10|/|<8>| = 2
|<9>| = 10 	|Z10|/|<9>| = 1

distict cyclic subgroups
(0)
(5 0)
(8 6 4 2 0)
(9 8 7 6 5 4 3 2 1 0)

no. of distinct subgroups = 4
divisors of |Z10| = (1 2 5 10)
no. of divisors of |Z10| = 4

sbcl --script driver.lisp multiplicative 10
Z/10Z = (1 3 7 9)
|Z/10Z| = 4

Cayley Table
 * 1 3 7 9
 1 1 3 7 9
 3 3 9 1 7
 7 7 1 9 3
 9 9 7 3 1

Z/10Z is Abelian.
Z/10Z is cyclic.

cyclic subgroups
<1> = (1)
<3> = (3 9 7 1)
<7> = (7 9 3 1)
<9> = (9 1)

|<1>| = 1 	|Z/10Z|/|<1>| = 4
|<3>| = 4 	|Z/10Z|/|<3>| = 1
|<7>| = 4 	|Z/10Z|/|<7>| = 1
|<9>| = 2 	|Z/10Z|/|<9>| = 2

distict cyclic subgroups
(1)
(7 9 3 1)
(9 1)

no. of distinct subgroups = 3
divisors of |Z/10Z| = (1 2 4)
no. of divisors of |Z/10Z| = 3
</pre>
