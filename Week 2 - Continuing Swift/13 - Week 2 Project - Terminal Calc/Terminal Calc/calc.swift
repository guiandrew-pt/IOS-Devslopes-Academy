#!/usr/bin/swift

var operation: String = ""
var firstNumber: Double = 0
var secondNumber: Double = 0
var isCalc: Bool = true
var amountNumbers: Int = 1

//
func startProgram() {
    print("#### CALCULATOR ####")

    print()
}

func askOperation() {
    print("What operation would you like to perform? (\"/\", \"*\", \"-\", \"+\", \"%\")")
    if let value = readLine() {
        let isValidOperation = validateOperation(valueStr: value)
        
        if isValidOperation {
            operation = value
        } else {
            askOperation()
        }
    }
}

func validateOperation(valueStr: String) -> Bool {
    switch valueStr {
        case Operation.division.operation, Operation.multi.operation, Operation.subt.operation, Operation.add.operation, Operation.remainder.operation:
                return true
        default:
            print("Not valid")
            return false
    }
}

func validateFirstOrSecond() -> String {
    if amountNumbers == 1 {
        return "first"
    } else {
        return "second"
    }
}

func storageNumbers(valueStr: String) {
    if amountNumbers == 1 {
        firstNumber = Double(valueStr) ?? 0
    } else {
        secondNumber = Double(valueStr) ?? 0
    }
}

func askForNumber() {
    let infoNumber: String = validateFirstOrSecond()
    
    print("Please enter the \(infoNumber) number:")
    
    if let value = readLine() {
        let isValid = validateNumber(numberStr: value)
        
        if isValid {
            storageNumbers(valueStr: value)
            
            amountNumbers += 1
        } else {
            print("This is not a number")
            askForNumber()
        }
    }
    
    if amountNumbers > 2 {
        amountNumbers = 1
    }
}

func validateNumber(numberStr: String) -> Bool {
    if let _ = Double(numberStr) {
        return true
    } else {
        return false
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
    
    askOperation()
    
    askForNumber()
    
    askForNumber()
    
    let result = doTheOperation()
    print(result)
    
    askForExit()
}
