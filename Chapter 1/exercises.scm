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





