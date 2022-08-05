# residues-modulo-n
Pretty print a Cayley Table and some other info about the multiplicative group of integers modulo n.<br>
Usage: sbcl --script report.lisp n<br>
Example:<br>
<pre>
sbcl --script report.lisp 26
z/26Z = (1 3 5 7 9 11 15 17 19 21 23 25)
|z/26Z| = 12
divisors of |z/26Z| = (1 2 3 4 6 12)
Cayley Table
*  1  3  5  7  9 11 15 17 19 21 23 25
  1  1  3  5  7  9 11 15 17 19 21 23 25
  3  3  9 15 21  1  7 19 25  5 11 17 23
  5  5 15 25  9 19  3 23  7 17  1 11 21
  7  7 21  9 23 11 25  1 15  3 17  5 19
  9  9  1 19 11  3 21  5 23 15  7 25 17
 11 11  7  3 25 21 17  9  5  1 23 19 15
 15 15 19 23  1  5  9 17 21 25  3  7 11
 17 17 25  7 15 23  5 21  3 11 19  1  9
 19 19  5 17  3 15  1 25 11 23  9 21  7
 21 21 11  1 17  7 23  3 19  9 25 15  5
 23 23 17 11  5 25 19  7  1 21 15  9  3
 25 25 23 21 19 17 15 11  9  7  5  3  1

z/26Z is cyclic.
cyclic subgroups
<25> = (1 25)
|<25>| = 2
|z/26Z| / |(1 25)| = 6

<23> = <17> = (1 3 9 17 23 25)
|<23>| = |<17>| = 6
|z/26Z| / |(1 3 9 17 23 25)| = 2

<19> = <15> = <11> = <7> = (1 3 5 7 9 11 15 17 19 21 23 25)
|<19>| = |<15>| = |<11>| = |<7>| = 12
|z/26Z| / |(1 3 5 7 9 11 15 17 19 21 23 25)| = 1

<21> = <5> = (1 5 21 25)
|<21>| = |<5>| = 4
|z/26Z| / |(1 5 21 25)| = 3

<9> = <3> = (1 3 9)
|<9>| = |<3>| = 3
|z/26Z| / |(1 3 9)| = 4

<1> = (1)
|<1>| = 1
|z/26Z| / |(1)| = 12

no. of distinct cyclic subgroups = 6
no. of divisiors of |z/26Z| = 6
</pre>
<br>
Display a table giving some information about residue groups modulo k up to n.<br>
Example:<br>
Usaage: sbcl --scrupt tablulate.lisp n<br>
<pre>
sbcl --script tabulate.lisp 26
                                   order
         n     order subgroups  divisors
         2         1         1         1  cyclic
         3         2         2         2  cyclic
         4         2         2         2  cyclic
         5         4         3         3  cyclic
         6         2         2         2  cyclic
         7         6         4         4  cyclic
         8         4         4         3
         9         6         4         4  cyclic
        10         4         3         3  cyclic
        11        10         4         4  cyclic
        12         4         4         3
        13        12         6         6  cyclic
        14         6         4         4  cyclic
        15         8         6         4
        16         8         6         4
        17        16         5         5  cyclic
        18         6         4         4  cyclic
        19        18         6         6  cyclic
        20         8         6         4
        21        12         8         6
        22        10         4         4  cyclic
        23        22         4         4  cyclic
        24         8         8         4
        25        20         6         6  cyclic
        26        12         6         6  cyclic
</pre>
