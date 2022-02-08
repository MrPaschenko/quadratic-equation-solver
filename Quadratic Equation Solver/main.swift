//
//  main.swift
//  Quadratic Equation Solver
//
//  Created by Дмитрий Пащенко on 08.02.2022.
//

import Foundation

var currentState = "Interactive"

print("Welcome to Quadratic Equation Solver!")

if (currentState == "Interactive") {
    print("ax^2 + bx + c = 0")
    print("Please, enter real numbers")

    print("a = ", terminator: "")
    let a = Double(readLine()!) ?? 0

    if a != 0 {
        print("b = ", terminator: "")
        let b = Double(readLine()!) ?? 0
        
        print("c = ", terminator: "")
        let c = Double(readLine()!) ?? 0
        
        print("Equation is: \(a) x^2 + \(b) x + \(c) = 0")
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
    } else {
        print("Error, a != 0")
    }
} else if (currentState == "Noninteractive") {
    
} else {
    print("Error (currentState variable is incorrect)")
}

func solveQuadraticEquation(a: Double, b: Double, c: Double) -> [Double] {
    let d = b * b - 4 * a * c
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
