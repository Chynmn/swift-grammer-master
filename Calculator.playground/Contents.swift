
import Foundation

protocol AbstractOperation {
    
    func calculate(_ firstNumber: Double,_ secondNumber: Double) -> Double
    
}

class Calculator {
    
    func calculate(_ operatorType: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {
        // 튜플 형태로 초기화
        let component = (operatorType, firstNumber, secondNumber)
        
        switch component.0 {
        case "+":
            return addOperation.calculate(component.1, component.2)
        case "-":
            return substractOperation.calculate(component.1, component.2)
        case "*":
            return multiplyOperation.calculate(component.1, component.2)
        case "/":
            return divideOperation.calculate(component.1, component.2)
        case "%":
            return remainderOperation.calculate(component.1, component.2)
        default:
            print("일치하는 연산자가 없습니다.")
            return 0
        }
    }
}

// 덧셈
class AddOperation: Calculator, AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

// 뺄셈
class SubstractOperation: Calculator, AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

// 곱셈
class MultiplyOperation: Calculator, AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

// 나눗셈
class DivideOperation: Calculator, AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}

// 나머지
class RemainderOperation: Calculator, AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber.truncatingRemainder(dividingBy: secondNumber)
    }
}

// 인스턴스
let calculator = Calculator()
let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()
let remainderOperation = RemainderOperation()


let addResult = calculator.calculate("+", 10, 20)
let subtractResult = calculator.calculate("-", 10, 20)
let multiplyResult = calculator.calculate("*", 10, 20)
let divideResult = calculator.calculate("/", 10, 20)
let remainderResult = calculator.calculate("%", 10, 20)
let errorResult = calculator.calculate("@", 10, 20)


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
print("errorResult : \(errorResult)")
