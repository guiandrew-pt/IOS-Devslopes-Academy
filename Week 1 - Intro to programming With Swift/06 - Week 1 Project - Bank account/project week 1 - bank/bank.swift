#!/usr/bin/swift

import Foundation

var balance: Double = 0.0
var withdraw: Double = 0.0
var continueStr = ""

// Balance
func printAskBalance() {
    print("How much money is in your bank account?")
    
    if let value = readLine() {
        balance = Double(value) ?? 0.0
    }
}

// Withdraw
func printAskWithdraw() {
    print("How much would you like to withdraw?")
    
    if let value = readLine() {
        withdraw = Double(value) ?? 0.0
    }
}

// Condition
func withdrawMovement() {
    if withdraw > balance || balance == 0 {
        messageBalanceNotEnough()
    } else {
        balance -= withdraw
        withdraw = 0
        print("Your new balance: \(balance)")
    }
}

// Message balance not enough
func messageBalanceNotEnough() {
    print("Your balance isn't high enough.")
}

// If user want to continue
func askIfWantMoreWithdraw() {
    print("You want to continue? (S\\N)")
    
    if let answer = readLine() {
        continueStr = answer
    }
}

// Start 
printAskBalance()

while withdraw <= balance {
    printAskWithdraw()
    askIfWantMoreWithdraw()
    withdrawMovement()
    
    if balance == 0 || continueStr.lowercased() == "n" {
        break
    }
}

if balance == 0 {
    messageBalanceNotEnough()
}
