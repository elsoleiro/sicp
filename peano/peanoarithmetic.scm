#|
normal procedure for operator (+)
> (+ 3 4)
|(+ 3 4)
|7
7
|#
;===========================================================
; RECURSIVE
(define (+ x y)
    (if (= x 0)
        y
        (1+ (+ (-1+ x) y)))) ; increment of the sum of the decrement of the first number and the second
; add together the decrement of x with y (simpler problem), change that result to increment it.
#|
> (+ 3 5)
|(+ 3 5)
| (+ 2 5)
| |(+ 1 5)
| | (+ 0 5)
| | 5
| |6
| 7
|8
8
|#

#|
(+ 3 4)
(1+ (+ 2 4))
(1+ (1+ (+ 1 4)))
(1+ (1+ (1+ (0 4))))
(1+ (1+ (1+ 4)))
(1+ (1+ 5))
(1+ 6)
7
time = O(x) (order of the input argument x)
space = O(x)
hence this is a linear recursion because it is proportional to the argument in time and space
|#
;=============================================================
; ITERATIVE

(define (+ x y)
    (if (= x 0)
        y
        (+ (-1+ x) (1+ y))))

#|
implementation of peano arithmetic

> (+ 3 4) |
|(+ 3 4)  |
|(+ 2 5)  |
|(+ 1 6)  |
|(+ 0 7)  |
|7        v
7       time
-------> space

time = O(x)
space = 0(1)
|#

