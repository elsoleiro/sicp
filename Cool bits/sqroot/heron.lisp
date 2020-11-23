(defun average (x y) ; formal params two integers
    (/ (+ x y) 2)) ; quotient of the sum of those two integers and 2

(defun square (x) ; formal parameter of an integer
    (* x x)) ; return the product of that integer

(defun absolute (x) ; formal param of an integer
    (if (< x 0) ; if this condition is true
        (- x) ; negate x
        x)) ; else, return x

(defun improve (guess x) ; two formal parameters, both integers
    (average guess (/ x guess))) ; invoke average on guess and the quotient of x and guess

(defvar tolerance .001) ; alias for precision, or, what is "good enough"
(defun  tolerable(guess x) ; formal parameter of two integers
    (< (absolute (- (square guess) x)) ; boolean result, such that the absolute value of guess*guess - x is less than tolerance
        tolerance))

(defun try (guess x) ; two formal params of integers
    (if (tolerable guess x) ; if the result of tolerable on guess & x is true, return guess, else, invoke try on the result of improve & guess and x
        guess ; base case ?
        (try (improve guess x) x))) ; else, invoke improve on (guess & x) then invoke try on the result of improve and x

(defun sqroot (x) ; formal param of one integer
    (try 1 x)) ; begin recursion


