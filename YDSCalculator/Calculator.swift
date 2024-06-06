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
        
}
