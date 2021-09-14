/*
 Create a function that takes a String as a parameter.

 Return the sum of any integers that are in the string.

 Example:

 Given "GH2U87A" you would return the value 17.

 If there are no numbers in the string return 0.

 Post your solution in the discussions here.
*/

import UIKit

func integersFromString(str: String?) -> Int? {
    guard let string = str else {
        return 0
    }
    
    let result = string.compactMap {
        Int(String($0))
    }.reduce(0, +)
    
    return result
}

if let value = integersFromString(str: "GH2U87A") {
    print(value)
}
