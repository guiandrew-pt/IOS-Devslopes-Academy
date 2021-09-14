#!/usr/bin/swift

import Foundation

var operation: String = ""
var firstNumber: Double = 0
var secondNumber: Double = 0
var isCalc: Bool = true
var amount: Int = 1
var operationType: String = ""
var valueFirstNumberStr: String = ""
var valueSecondNumberStr: String = ""

//
func startProgram() {
    print("#### CALCULATOR ####")

    print()
}

func validateOperation(valueStr: String) -> String {
    if valueStr.contains(Operation.division.operation) {
        return Operation.division.operation
    } else if valueStr.contains(Operation.multi.operation) {
        return Operation.multi.operation
    } else if valueStr.contains(Operation.subt.operation) {
        return Operation.subt.operation
    } else if valueStr.contains(Operation.add.operation) {
        return Operation.add.operation
    } else if valueStr.contains(Operation.remainder.operation) {
        return Operation.remainder.operation
    } else {
        return ""
    }
}

func validateFirstOrSecondOrOperation(valueStr: String) -> Bool {
    operationType = validateOperation(valueStr: valueStr)
    
    if operationType.count > 0 {
        let range: Range<String.Index> = valueStr.range(of: operationType)!
        
        let indexFirstNumber: Int = valueStr.distance(from: valueStr.startIndex, to: range.lowerBound)
        valueFirstNumberStr = String(valueStr.prefix(indexFirstNumber))
        
        let indexSecondNumber: Int = valueStr.distance(from: range.upperBound, to: valueStr.endIndex)
        valueSecondNumberStr = String(valueStr.suffix(indexSecondNumber))
    } 
    
    let isFirstNumber = validateNumber(numberStr: valueFirstNumberStr)
    let isSecondNumber = validateNumber(numberStr: valueSecondNumberStr)
    
    
    if isFirstNumber && (operationType.count > 0) && isSecondNumber {
        return true
    }
    
    return false
}

func validateNumber(numberStr: String) -> Bool {
    if let _ = Double(numberStr) {
        return true
    } else {
        return false
    }
}

func storageNumbersAndOperation(valueStr: String) {
    firstNumber = Double(valueFirstNumberStr) ?? 0
    operation = operationType
    secondNumber = Double(valueSecondNumberStr) ?? 0
}

func infoNotValidOneLine() {
    print("Not valid! (Ex: 5*5)")
    askForNumbersAndOperation()
}

func askForNumbersAndOperation() {
    print("Please enter the first number follow the operation and the second number (Ex: 5*5):")
    
    if let value = readLine() {
        let str = value.replacingOccurrences(of: " ", with: "")
        
        if str.count < 3 {
            infoNotValidOneLine()
        } else {
            let validateStr = validateFirstOrSecondOrOperation(valueStr: str)
            
            if validateStr {
                storageNumbersAndOperation(valueStr: str)
            } else {
                infoNotValidOneLine()
            }
        }
    }
}

enum Operation {
    case division, multi, subt, add, remainder
    
    var operation: String {
        switch self {
            case .division:
                return "/"
            case .multi:
                return "*"
            case .subt:
                return "-"
            case .add:
                return "+"
            case .remainder:
                return "%"
        }
    }
}

func doTheOperation() -> Double {
    switch operation {
        case Operation.division.operation:
            return firstNumber / secondNumber
        case Operation.multi.operation:
            return firstNumber * secondNumber
        case Operation.subt.operation:
            return firstNumber - secondNumber
        case Operation.add.operation:
            return firstNumber + secondNumber
        case Operation.remainder.operation:
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        default:
            return 0
    }
}

func askForExit() {
    print("Press (Y) to continue or (N) to exit:")
    if let value = readLine() {
        if value.lowercased() == "y" {
            isCalc = true
        } else if value.lowercased() == "n" {
            isCalc = false
        } else {
            print("That's not valid! Only (Y) or (N)!")
            askForExit()
        }
    }
}

// Start
while isCalc {
    startProgram()
    
    askForNumbersAndOperation()
    
    let result = doTheOperation()
    print(result)
    
    askForExit()
}
