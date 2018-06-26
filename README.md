#General Notes

This contains my current working progress of reading through SICP 2nd edition. The series of [video lectures](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/video-lectures/) given by Harold Abelson and Gerald Sussman provided great help in understanding the material.

[mit-scheme](https://www.gnu.org/software/mit-scheme/) was used to evaluate the solutions in this repository.
In order to an inexact decimal representation of a rational number, use the procedure `exact->inexact` e.g. `(exact->inexact (/ 1 2))`.

#1.1
A recursive definition of approximating √x using Heron's method:
```
(define (sqrt x)
    (define (average x y) 
        (/ (+ x y) 2))
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
Lecture summary:
- In creating programs, we are expressing imperative knowledge
- Lisp combines the following as a means to construct programs
    - Primitive elements
    - Means of combination
    - Means of abstraction

#1.2

