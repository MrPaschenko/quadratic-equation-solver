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
        let b = Int(readLine()!) ?? 0
        
        print("c = ", terminator: "")
        let c = Int(readLine()!) ?? 0
        
        print("Equation is: \(a) x^2 + \(b) x + \(c) = 0")
        
    } else {
        print("Error, a != 0")
    }
} else if (currentState == "Noninteractive") {
    
} else {
    print("Error (currentState variable is incorrect)")
}
