
import Foundation

func stringToOperator(_ str: String) -> Operator? {
    return Operator(rawValue: str)
}

let car = Calculator()
let input = Input()

// 사용자로부터 입력 받기
let firstNumber = input.inputA(prompt: "첫 번째 숫자를 입력하세요:")
let operationInput = input.getoper(prompt: "연산자를 입력하세요 (+, -, *, /, %):")
let secondNumber = input.inputA(prompt: "두 번째 숫자를 입력하세요:")

// String 연산자를 Operator로 변환
if let operation = stringToOperator(operationInput) {
    // 계산 및 결과 출력
    let result = car.calculate(oper: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    print("결과: \(result)")
} else {
    print("옳바른 연산자를 입력하세요.")
}
