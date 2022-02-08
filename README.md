# Quadratic Equation Solver

[This is **lab 1** for Software Development Methodologies and Technologies](https://docs.google.com/document/d/1pTz_GAy3GX0GxxoRV5DAiCIGJyMOONHuT9WQS8JgrB0/edit#)

This tiny CLI program written in Swift lets you solve quadratic equations

## Installation

1. Be sure that you have installed Git to clone the repository and Swift to run script

2. Clone the repository to you local machine
```bash
git clone https://github.com/MrPaschenko/quadratic-equation-solver
```

3. Open directory
```bash
cd quadratic-equation-solver/Quadratic\ Equation\ Solver
```

4. Run script
```bash
swift main.swift
```

## Usage

There are two modes supported:
1. Interactive
2. Noninteractive

To change mode, comment/uncomment 55/56 lines.

### Interactive

Just enter real numbers for a, b, c variables and script will solve the problem!

```
Welcome to Quadratic Equation Solver!
ax^2 + bx + c = 0
Please, enter real numbers
> a = 2
> b = 1
> c = -3
Equation is: (2.0) x^2 + (1.0) x + (-3.0) = 0
Discriminant is 25.0
There are 2 roots
x1 = 1.0
x2 = -1.5
```

### Noninteractive

Enter path to file to solve the problem.

```
Welcome to Quadratic Equation Solver!
Please, enter path to file
> Documents/file.txt
Equation is: (1.0) x^2 + (0.0) x + (0.0) = 0
Discriminant is 0.0
There is 1 root
x = -0.0
```

File's content should be as follows:

```
1 0 0

```
or
```
1\s0\s0\n
```

___

> [Revert commit](https://github.com/MrPaschenko/quadratic-equation-solver/commit/da19e8a2bc9a8a4be923da24706c6f96d16a1509)
