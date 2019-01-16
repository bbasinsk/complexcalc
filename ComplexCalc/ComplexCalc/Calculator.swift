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
        return args.reduce(beg, { (l, r) in op(l, r) })
    }
    
    
    // args
    func add(_ args: [Int]) -> Int {
        return args.reduce(0, { (l, r) in l + r })
    }
    
    func multiply(_ args: [Int]) -> Int {
        return args.reduce(1, { (l, r) in l * r })
    }
    
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg(_ args: [Int]) -> Int {
        if (args.count == 0) { return 0 }
        let total = args.reduce(0, { (l, r) in l + r })
        return total / args.count
    }
    
    
    // tuples
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    
    // dictionaries
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return lhs.merging(rhs) { (l, r) in l + r }
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return lhs.merging(rhs) { (l, r) in l - r }
    }
}
