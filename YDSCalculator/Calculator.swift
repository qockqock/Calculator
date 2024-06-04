//
//  Calculator.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/4/24.
//

import Foundation


class Calculator{
    func calculate(oper: String, firstNumer: Int, secondNumber: Int ) -> Int {
        switch oper {
        case "+":
            return firstNumer + secondNumber
        case "-":
            return firstNumer - secondNumber
        case "*":
            return firstNumer * secondNumber
        case "/":
            return firstNumer / secondNumber
        case "%":
            return firstNumer % secondNumber
        default:
            print("옳바른 값을 입력하세요.")
        }
        return 0
    }
    
    // 숫자 입력 받기
    func inputA(prompt: String) -> Int {
        print(prompt,terminator:"")
        guard let input = readLine(), let number = Int(input) else {
            print("유효한 숫자를 입력해주세요.")
            return inputA(prompt: prompt)
        }
        return number
    }

    // 연산자 입력 받기
    func getoper(prompt: String) -> String {
        print(prompt,terminator: "")
        guard let operation = readLine(), ["+", "-", "*", "/", "%"].contains(operation) else {
            print("유효한 연산자를 입력해주세요 (+, -, *, /, %).")
            return getoper(prompt: prompt)
        }
        return operation
    }
}
