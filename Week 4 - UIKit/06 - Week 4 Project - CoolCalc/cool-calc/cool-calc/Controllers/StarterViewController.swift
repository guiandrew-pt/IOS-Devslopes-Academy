//
//  ViewController.swift
//  cool-calc
//
//  Created by Guilherme Andre on 25/08/2021.
//

import UIKit

class StarterViewController: UIViewController {
    
    //Variables(let & var)
    var calculator: Calculator!
    var operation: String? = ""
    var isChangeForOtherNumber: Bool = false
    var previous: String = ""
    var current: String = ""
    
    // Outlets:
    @IBOutlet weak var resultTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        disableResultTxt()
        
        calculator = Calculator()
    }

    // IBActions:
    @IBAction func acBtn(_ sender: UIButton) {
        reset()
    }
    
    @IBAction func removeLastBtn(_ sender: UIButton) {
        removeLast()
    }
    
    @IBAction func plusMinusBtn(_ sender: UIButton) {
        plusMinus()
    }

    @IBAction func numPadBtns(_ sender: UIButton) {
        if let numPad = sender.currentTitle {
            if numPad == "," {
                addCommaToNum(comma: numPad)
            } else {
                appendNumberToTextField(num: numPad)
            }
        }
    }
    
    @IBAction func operationsBtns(_ sender: UIButton) {
        if let operation = sender.currentTitle {
            chooseOperation(symbol: operation)
        }
    }
    
    @IBAction func equalBtn(_ sender: UIButton) {
        equalResult()
    }
    
    // Functions:
    private func disableResultTxt() {
        resultTxt.isEnabled = false
    }
    
    private func reset() {
        resultTxt.text = ""
        isChangeForOtherNumber = false
    }
    
    private func removeLast() {
        if resultTxt.text != "" && current != "" {
            resultTxt.text?.removeLast()
            current.removeLast()
        }
    }
    
    private func plusMinus() {
        if resultTxt.text != "" && current != "" {
            let strIndex = (resultTxt.text?.startIndex)!
            
            resultTxt.text?.insert("-", at: strIndex)
            current.insert("-", at: current.startIndex)
        }
    }
    
    private func appendNumberToTextField(num: String) {
        if isChangeForOtherNumber {
            reset()
            resultTxt.text?.append(num)
            updateCurrent()
            isChangeForOtherNumber = false
        } else {
            resultTxt.text?.append(num)
            updateCurrent()
        }
    }
    
    private func updateCurrent() {
        current = resultTxt.text?.replacingOccurrences(of: ",", with: ".") ?? "Not a number"
    }
    
    private func chooseOperation(symbol: String) {
        if !isChangeForOtherNumber {
            operation = symbol
            
            if operation != "%" {
                previous = resultTxt.text?.replacingOccurrences(of: ",", with: ".") ?? "Not a number"
                
                isChangeForOtherNumber = true
            } else {
                percentageOperation()
            }
        }
    }
    
    private func percentageOperation() {
        calculator.firstGroupOfDigits = current
        calculator.operation = operation
        let percentage = calculator.result().replacingOccurrences(of: ".", with: ",")
        reset()
        resultTxt.text?.append(percentage)
    }
    
    private func equalResult() {
        if operation != "" {
            calculator.firstGroupOfDigits = previous
            calculator.secondGroupOfDigits = current
            calculator.operation = operation
            
            let result = calculator.result()
            reset()
            resultTxt.text?.append(result.replacingOccurrences(of: ".", with: ","))
        }
    }
    
    private func addCommaToNum(comma: String) {
        if isChangeForOtherNumber {
            reset()
        }
        
        if let str = resultTxt.text {
            let isComma = str.contains(",") || str.contains(".")
            if !isComma {
                if str.count == 0 {
                    resultTxt.text?.append("0,")
                } else {
                    resultTxt.text?.append(",")
                }
            }
        }
    }
}

