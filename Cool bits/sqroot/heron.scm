(define (average x y)
    (/ (+ x y) 2))

(define (square x)
    (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (absolute x)
    (if (< x 0)
        (- x)
           x))

(define (good-enough? guess x)
    (< (absolute (- (square guess) x))
        .001))


(define (try guess x)
    (if (good-enough? guess x)
        guess
        (try (improve guess x) x)))

(define (sqroot x) (try 1 x))

(write (sqroot 2.0))


