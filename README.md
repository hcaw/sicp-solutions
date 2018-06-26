#1.1

A recursive definition of approximating √x using Heron's method:
```
(define (average x y) (/ (+ x y) 2))

(define (sqrt x)
    (define (improve guess)
        (average guess (/ x guess)))
    (define (good-enough? guess)
        (< (abs (- (square guess) x))
            0.001))
    (define (try guess)
        (if (good-enough? guess)
            guess
            (try (improve guess))))
    (try 1))
```