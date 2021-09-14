//
//  Calculator.swift
//  cool-calc
//
//  Created by Guilherme Andre on 30/08/2021.
//

import Foundation

struct Calculator {
    var firstGroupOfDigits: String? = ""
    var secondGroupOfDigits: String? = ""
    var operation: String? = ""
    
    func result() -> String {
        var restulStr = ""
        switch operation {
            case "%":
                restulStr = calculatePercentage()
            case "/":
                restulStr = calculateDivision()
            case "*":
                restulStr = calculateMultiplication()
            case "+":
                restulStr = calculateAddition()
            case "-":
                restulStr = calculateSubtraction()
            default:
                restulStr = "Not a number"
        }
        
        return restulStr
    }
    
    private func calculatePercentage() -> String {
        guard let num = Double(firstGroupOfDigits ?? "") else {
            return "Not a number"
        }
        
        return String(num / 100)
    }
    
    private func calculateDivision() -> String {
        guard let firstNum = Double(firstGroupOfDigits ?? ""), let secondNum = Double(secondGroupOfDigits ?? "") else {
            return "Not a number"
        }
        
        if secondNum == 0 {
            return "Not a number"
        }
        
        let subResult = firstNum / secondNum
        
        let result = checkIfDecimal(num: subResult)
        
        return result
    }
    
    private func calculateMultiplication() -> String {
        guard let firstNum = Double(firstGroupOfDigits ?? ""), let secondNum = Double(secondGroupOfDigits ?? "") else {
            return "Not a number"
        }
        
        if secondNum == 0 {
            return "0"
        }
        
        let subResult = firstNum * secondNum
        
        let result = checkIfDecimal(num: subResult)
        
        return result
    }
    
    private func calculateAddition() -> String {
        guard let firstNum = Double(firstGroupOfDigits ?? ""), let secondNum = Double(secondGroupOfDigits ?? "") else {
            return "Not a number"
        }
        
        let subResult = firstNum + secondNum
        
        let result = checkIfDecimal(num: subResult)
        
        return result
    }
    
    private func calculateSubtraction() -> String {
        guard let firstNum = Double(firstGroupOfDigits ?? ""), let secondNum = Double(secondGroupOfDigits ?? "") else {
            return "Not a number"
        }
        
        let subResult = firstNum - secondNum
        
        let result = checkIfDecimal(num: subResult)
        
        return result
    }
    
    private func checkIfDecimal(num: Double) -> String {
        let isDecimal = num.truncatingRemainder(dividingBy: 1) == 0
        
        if isDecimal {
            return String(format: "%g", num)
        } else {
            return String(num)
        }
    }
}
