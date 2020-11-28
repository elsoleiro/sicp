; 1.2 translate into prefix form
(write 
    (/ (+ 5.0
          4.0
       (- 2.0
          3.0
       (+ 6.0 (/ 4.0 5.0))))
       
       (* 3.0
       (- 6.0 2.0)
       (- 2.0 7.0))))

; 1.3 -- revisit this with some (more) original thought
(display "\n")

(define (square a b c)
      (+ (* a a) (* b b) (* c c)))

(define (smallest? a b c)
   (cond ((and (<= a b) (<= a c)) (* a a))
         ((and (<= b a) (<= b c)) (* b b))
         (else (* c c))))

(define (answer a b c)
   (- (square a b c)
      (smallest? a b c)))

; 1.4
(define (a-plus-abs-b a b)
   ((if (> b 0) + -) a b))
; this function returns a + the absolute value of b
; remember, if (cond) true false, expanded as:
(define (a-plus-abs-b a b)
   (if (> b 0)
       (+ a b)
       (- a b)))
; so what we're looking at is "a + |b|"

; 1.5

; normal order evaluates all of the arguments first, hence "outside-in", whilst applicative order would only evaluate when required.

(define (p) (p)) ; a procedure that only returns itself.

(define (test a b)
   (if (= a 0)
          0
          b))

<3, 9>
+
<4, 7>


; invoked with (test 0 (p)).
#|
if a redex is a reductible function expression, normal order evaluation can be said to evaluate the left most redex first.
therefore, normal order evaluation would evaluate the predicate to the if and then immediately return the consequent, never needing to evaluate
the right-most argument (p)

conversely, applicative order evaluate would evaluate the 0, then invoke (p), resulting in a loop.

remember, loosely, that functions in scheme are evaluated in applicative order and builtins tend to be evaluated in normal order.
|#

#|
usually, we give predicates names ending wqith question marks.
|#

; 1.6

(define (new-if predicate then-clause else-clause) 
   (cond (predicate then-clause)
         (else else-clause)))