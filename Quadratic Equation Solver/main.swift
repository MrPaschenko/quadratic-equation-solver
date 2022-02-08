//
//  main.swift
//  Quadratic Equation Solver
//
//  Created by Дмитрий Пащенко on 08.02.2022.
//

import Foundation

func solveQuadraticEquation(a: Double, b: Double, c: Double) {
    var answer: [Double] = []
    print("Equation is: (\(a)) x^2 + (\(b)) x + (\(c)) = 0")
    
    let d = b * b - 4 * a * c
    print("Discriminant is \(d)")
    
    if d > 0 {
        let x1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a)
        let x2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a)
        answer.append(x1)
        answer.append(x2)
    } else if d == 0 {
        let x = (-b) / (2 * a)
        answer.append(x)
    }
    
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

//var currentState = "Interactive"
var currentState = "Noninteractive"

print("Welcome to Quadratic Equation Solver!")

if (currentState == "Interactive") {
    print("ax^2 + bx + c = 0")
    print("Please, enter real numbers")
    
    let a = getInput(variable: "a")
    let b = getInput(variable: "b")
    let c = getInput(variable: "c")
    
    solveQuadraticEquation(a: a, b: b, c: c)
    
} else if (currentState == "Noninteractive") {
    print("Please, enter path to file")
    let home = FileManager.default.homeDirectoryForCurrentUser
    let path = readLine()!
    let linkToFile = home.appendingPathComponent(path)
    
    let fileManager = FileManager.default
    let fileExists = fileManager.fileExists(atPath: linkToFile.path)
    
    if fileExists {
        let fileContent = try! String(contentsOf: linkToFile)
        let array = fileContent.map { String($0) }

        let a = Double(array[0])!
        let b = Double(array[2])!
        let c = Double(array[4])!

        solveQuadraticEquation(a: a, b: b, c: c)
    } else {
        print("File doesn't exit")
    }
    
} else {
    print("Error (currentState variable is incorrect)")
}
