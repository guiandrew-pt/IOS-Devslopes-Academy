// Coding Challenge

/*
 Write a function that takes an array of strings and prints them, one per line, in a rectangular frame. For example the list ["This", "is", "a", "frame", "print"] gets printed as:

 **********
 * This   *
 * is     *
 * a      *
 * frame  *
 * print  *
 **********
*/

import Foundation

func challengeFrame(list: [String]) {
    let strBigger = list.max(by: {$1.count > $0.count})
    
    if let bigger = strBigger {
        let biggerLenght = bigger.count * 2
        
        var strResult = ""
        strResult.append(String(repeating: "*", count: biggerLenght))
        strResult.append("\n")
        
        for item in list {
            strResult.append("* \(item.padding(toLength: (biggerLenght - 4), withPad: " ", startingAt: 0)) *")
            strResult.append("\n")
        }
        
        strResult.append(String(repeating: "*", count: biggerLenght))
        
        print(strResult)
        
    } else {
        print("Not valid")
    }
}

let list = ["This", "is", "a", "frame", "print"]
challengeFrame(list: list)
