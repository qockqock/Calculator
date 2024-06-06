//
//  Calculator.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/4/24.
//

import Foundation


class Calculator{
    let add = AddOperation()
    let subtract = SubtractOperation()
    let multiply = MultiplyOperation()
    let divide = DivideOperation()
    let remainder = RemainderOperation()
    
    
    
    func calculate(oper: String, firstNumber: Int, secondNumber: Int ) -> Int {
        switch oper {
        case "+":
            return add.addoper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtract.subtractoper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiply.multiplyoper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divide.divideoper(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return remainder.remainoper(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            print("옳바른 값을 입력하세요.")
        }
        return 0
    }
        
}

class AddOperation{
    func addoper(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber + secondNumber
    }
}

class SubtractOperation{
    func subtractoper(firstNumber: Int, secondNumber: Int) -> Int{
        
        return firstNumber - secondNumber
    }
}

class MultiplyOperation{
    func multiplyoper(firstNumber: Int, secondNumber: Int) -> Int{
        
        return firstNumber * secondNumber
    }
}

class DivideOperation{
    func divideoper(firstNumber: Int, secondNumber: Int) -> Int{
        
        return firstNumber / secondNumber
    }
}

class RemainderOperation{
    func remainoper(firstNumber: Int, secondNumber: Int) -> Int{
        
        return firstNumber % secondNumber
    }
}
