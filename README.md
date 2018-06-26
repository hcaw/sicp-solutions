#General Notes

[mit-scheme](https://www.gnu.org/software/mit-scheme/) was used to evaluate the solutions in this repository.
In order to an inexact decimal representation of a rational number, use the procedure `exact->inexact` e.g. `(exact->inexact (/ 1 2))`.

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