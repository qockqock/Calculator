
import Foundation

let car = Calculator()

// 사용자로부터 입력 받기
let firstNumber = car.inputA(prompt: "첫 번째 숫자를 입력하세요:")
let operation = car.getoper(prompt: "연산자를 입력하세요 (+, -, *, /):")
let secondNumber = car.inputA(prompt: "두 번째 숫자를 입력하세요:")

// 계산 및 결과 출력
let result = car.calculate(oper: operation, firstNumer: firstNumber, secondNumber: secondNumber)

print(result)
