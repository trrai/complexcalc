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
    func add(_ nums: [Int]? = nil, lhs: Int = 0, rhs: Int = 0) -> Int{
        if(nums != nil){
            var sum = 0
            for num in nums!{
                sum += num
            }
            return sum
        }
        return lhs + rhs
    }
    func add(lhs:(Int, Int), rhs:(Int,Int)) -> (Int, Int){
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    func add(lhs:Dictionary<String, Int>, rhs:Dictionary<String, Int>) -> Dictionary<String, Int>{
        var returnDict: [String:Int] = [:]
        for (key, _) in lhs{
            returnDict[key] = lhs[key]! + rhs[key]!
        }
        return returnDict
    }
    func subtract(lhs: Int, rhs: Int) -> Int{
        return lhs - rhs
    }
    func subtract(lhs:Dictionary<String, Int>, rhs:Dictionary<String, Int>) -> Dictionary<String, Int>{
        var returnDict: [String:Int] = [:]
        for (key, _) in lhs{
            returnDict[key] = lhs[key]! - rhs[key]!
        }
        return returnDict
    }
    func subtract(lhs:(Int, Int), rhs:(Int,Int)) -> (Int, Int){
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    func multiply(_ nums:[Int]? = nil, lhs: Int = 0, rhs: Int = 0) -> Int{
        if(nums != nil){
            var sum = 1
            for num in nums!{
                sum *= num
            }
            return sum
        }
        return lhs * rhs
        
    }
    func divide(lhs: Int, rhs: Int) -> Int{
        return lhs / rhs
    }
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int{
        return op(lhs, rhs)
    }
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int{
        var operation_result = op(beg, args[0])
        for i in 1...args.count-1{
            operation_result = op(operation_result, args[i])
        }
        print(operation_result)
        return operation_result
    }
    func count(_ nums:[Int]) -> Int{
        return nums.count;
    }
    func avg(_ nums:[Int]) -> Int{
        return add(nums)/count(nums)
    }
}
