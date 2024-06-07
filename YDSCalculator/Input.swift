//
//  Input.swift
//  YDSCalculator
//
//  Created by 머성이 on 6/6/24.
//

import Foundation

class Input{
    // 숫자 입력 받기
    func inputA(prompt: String) -> Double {
        print(prompt,terminator:"") // terminateor 사용 한 이유? -> 값을 입력 후 대기시간 줄이기 용도로 사용.
        guard let input = readLine(), let number = Double(input) else {
            print("유효한 숫자를 입력해주세요.")
            return inputA(prompt: prompt)
        }
        return number
    }

    // 연산자 입력 받기
    func getoper(prompt: String) -> String {
        print(prompt,terminator:"")
        guard let operation = readLine(), ["+", "-", "*", "/", "%"].contains(operation) else {
            print("유효한 연산자를 입력해주세요 (+, -, *, /, %).")
            return getoper(prompt: prompt)
        }
        return operation
    }
}
