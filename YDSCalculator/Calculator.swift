//
//  Calculator.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/4/24.
//

import Foundation

class Calculator{

    func calculate(oper: String, firstNumber: Int, secondNumber: Int ) -> Int {
        switch oper {
        case "+":
            return AddOperation().oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return SubtractOperation().oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return MultiplyOperation().oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return DivideOperation().oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return RemainderOperation().oper(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            print("옳바른 값을 입력하세요.")
        }
        return 0
    }
}


class AbstractOperation{
    func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return 0
    }
}

// 덧셈 연산
class AddOperation: AbstractOperation{
    override func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber + secondNumber
    }
}

// 뺄셈 연산
class SubtractOperation: AbstractOperation{
    override  func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber - secondNumber
    }
}

// 곱셈 연산
class MultiplyOperation: AbstractOperation{
    override  func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber * secondNumber
    }
}

// 나누기 연산
class DivideOperation: AbstractOperation{
    override  func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber / secondNumber
    }
}

// 나머지 연산
class RemainderOperation:AbstractOperation{
    override  func oper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber % secondNumber
    }
}
