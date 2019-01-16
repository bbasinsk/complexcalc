//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // two args
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    
    // with op
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        return args.reduce(beg, { op($0, $1) })
    }
    
    
    // args
    func add(_ args: [Int]) -> Int {
        return 0
    }
    
    func subtract(_ args: [Int]) -> Int {
        return 0
    }
    
    func multiply(_ args: [Int]) -> Int {
        return 0
    }
    
    func divide(_ args: [Int]) -> Int {
        return 0
    }
    
    func mathOp(_ args: [Int]) -> Int {
        return 0
    }
    
    func count(_ args: [Int]) -> Int {
        return 0
    }
    
    func avg(_ args: [Int]) -> Int {
        return 0
    }
    
    
    // tuples
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (0, 0)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (0, 0)
    }
    
    
    // dictionaries
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": 0]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": 0]
    }
}
