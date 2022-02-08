//
//  main.swift
//  Quadratic Equation Solver
//
//  Created by Дмитрий Пащенко on 08.02.2022.
//

import Foundation

func solveQuadraticEquation(a: Double, b: Double, c: Double) -> [Double] {
    let d = b * b - 4 * a * c
    print("Discriminant is \(d)")
    if d > 0 {
        let x1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a)
        let x2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a)
        return [x1, x2]
    } else if d == 0 {
        let x = (-b) / (2 * a)
        return [x]
    }
    return []
}

func getInput(variable: String) -> Double {
    var more = true
    repeat {
        print("\(variable) = ", terminator: "")
        if let input = readLine() {
            if let number = Double(input) {
                more = false
                return number
            } else {
                print("Error. Expected a valid real number, got \(input) instead")
            }
        }
    } while more
}

var currentState = "Interactive"
//var currentState = "Noninteractive"

print("Welcome to Quadratic Equation Solver!")

if (currentState == "Interactive") {
    print("ax^2 + bx + c = 0")
    print("Please, enter real numbers")
    
    let a = getInput(variable: "a")
    let b = getInput(variable: "b")
    let c = getInput(variable: "c")
    
    print("Equation is: (\(a)) x^2 + (\(b)) x + (\(c)) = 0")
    let answer = solveQuadraticEquation(a: a, b: b, c: c)
    if answer.count == 2 {
        print("There are 2 roots")
        print("x1 = \(answer[0])")
        print("x2 = \(answer[1])")
    } else if answer.count == 1 {
        print("There is 1 root")
        print("x = \(answer[0])")
    } else {
        print("There are no roots")
    }
    
} else if (currentState == "Noninteractive") {
    
} else {
    print("Error (currentState variable is incorrect)")
}
