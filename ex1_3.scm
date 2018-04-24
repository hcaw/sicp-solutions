(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x)(square y)))
(define (largest-2-sum-squares a b c)
  (cond 
        ((and (>= a b)(>= b c)) (sum-of-squares a b)) ; a b
        ((and (>= a b)(>= c b)) (sum-of-squares a c)) ; a c
        ((and (>= b a)(>= c b)) (sum-of-squares b c)))) ; b c
(largest-2-sum-squares 1 1 2)