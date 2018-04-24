(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))
; behaviour -> adds a to absolute value of b
(a-plus-abs-b 2 -3)