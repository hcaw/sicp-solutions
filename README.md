# Structure and Interpretation of Computer Programs

This contains my current working progress of reading through SICP 2nd edition. The series of [video lectures](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/video-lectures/) given by Harold Abelson and Gerald Sussman provided great help in understanding the material.

[mit-scheme](https://www.gnu.org/software/mit-scheme/) was used to evaluate the solutions in this repository.

In order to get an inexact decimal representation of a rational number, use the procedure `exact->inexact` e.g. `(exact->inexact (/ 1 2))`.

## Course Notes

## Lecture 1A - Hal Abelson
### Section 1.1
- To study computer science is to learn how to formalise intuitions about process
- Declarative knowledge - *what is true*
- Imperative knowledge - *how to*
- What is a process?
    - Directed by patterns of rules called *procedures*
- This course (and moreover the field of computer science) essentially deals with techniques for controlling complexity
    - In regular engineering the limits of complexity are constrained by the physical world 
    - The constraints in building large software systems are the limitations of our own mind
        - Computer science is an abstract form of engineering, ignoring the constraints imposed by reality

A recursive definition of approximating √x using Heron's method:
```scheme
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

## Lecture 1B - Gerald Sussman
### Section 1.2
- In order for a programmer to construct programs in an effective manner, he must understand the relationship between the things he writes and the behaviour of the process that he is attempting to control
    - This lecture will establish this connection in a clear a way as possible
- We will understand how particlar patterns of procedures and expressions, cause particular patterns of execution and behaviour from the processes

- If we are to understand processes and how to control them, then we have to have a mapping from the mechanisms of our procedure into the way the processes behave
    - We will use a formal mechanical model to understand how a machine could execute procedures (whether the machine actually does this is irrelevant)
- Substitution model is the simplest way for understanding how procedures yield processes
    - Evaluate the operator to get procedures
    - Evaluate the operands to get arguments
    - Apply the procedure to the arguments
        - Copy the body of the procedure, substituting the arguments supplied for the formal parameters of the procedure.
        - Evaluate the resulting new body

- The key to understanding complicated things is to know what not to look at (ignore the details)

Kinds of expressions
- Numbers
- Symbols
- Lambda expressions
- Definitions
- Conditionals
- Combinations
