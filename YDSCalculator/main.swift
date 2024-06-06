
import Foundation

let car = Calculator()
let input = Input()

// 사용자로부터 입력 받기
let firstNumber = input.inputA(prompt: "첫 번째 숫자를 입력하세요:")
let operation = input.getoper(prompt: "연산자를 입력하세요 (+, -, *, /, %):")
let secondNumber = input.inputA(prompt: "두 번째 숫자를 입력하세요:")

// 계산 및 결과 출력
let result = car.calculate(oper: operation, firstNumber: firstNumber, secondNumber: secondNumber)

print(result)
