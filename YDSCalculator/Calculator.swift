//
//  Calculator.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/4/24.
//


/* 고려해야할 것
 1. 단일책임원칙 - 완
 2. 의존성역전원칙 - 완
 */

import Foundation

enum Operator: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    case remainder = "%"
    
    func getOperation() -> AbstractOperation {
        switch self {
        case .add:
            return AddOperation()
        case .subtract:
            return SubtractOperation()
        case .multiply:
            return MultiplyOperation()
        case .divide:
            return DivideOperation()
        case .remainder:
            return RemainderOperation()
        }
    }
}

class Calculator {
    func calculate(oper: Operator, firstNumber: Double, secondNumber: Double) -> Double {
        let operation = oper.getOperation()
        return operation.oper(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

class AbstractOperation{
    func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return 0
    }
}

// 덧셈 연산
class AddOperation: AbstractOperation{
    override func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber + secondNumber
    }
}

// 뺄셈 연산
class SubtractOperation: AbstractOperation{
    override  func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber - secondNumber
    }
}

// 곱셈 연산
class MultiplyOperation: AbstractOperation{
    override  func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber * secondNumber
    }
}

// 나누기 연산
class DivideOperation: AbstractOperation{
    override  func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber / secondNumber
    }
}

// 나머지 연산
class RemainderOperation:AbstractOperation{
    override  func oper(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber.truncatingRemainder(dividingBy: secondNumber)
    }
}
