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

(define square
   (lambda (a b c)
      (+ (* a a) (* b b) (* c c))))

(define (smallest a b c)
   (cond ((and (<= a b) (<= a c)) (* a a))
         ((and (<= b a) (<= b c)) (* b b))
         ((and (<= c a) (<= c b)) (* c c))))
(define (answer a b c)
   (- (square a b c)
      (smallest a b c)))




