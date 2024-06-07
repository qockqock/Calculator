//
//  Calculator.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/4/24.
//

import Foundation

class Calculator{
    let Add = AddOperation()
    let subtract = SubtractOperation()
    let multiply = MultiplyOperation()
    let divide = DivideOperation()
    let remain = RemainderOperation()
    
    // 힌트: return -> 프로퍼티 생성
    func calculate(oper: String, firstNumber: Int, secondNumber: Int ) -> Int {
        switch oper {
        case "+":
            return Add.oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtract.oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiply.oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divide.oper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return remain.oper(firstNumber: firstNumber, secondNumber: secondNumber)
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
