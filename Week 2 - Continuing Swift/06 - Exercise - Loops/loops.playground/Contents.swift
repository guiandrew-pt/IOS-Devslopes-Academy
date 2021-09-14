import UIKit

/*:
 ### Exercise
 
 Consider a banking system where the computer stores transactional data for a customer's account.
 
 1.  Create an array of Double that stores the amounts of ten past purchases
 2.  Create a loop that iterates through the array and prints the amount spent with this formatting: `"Purchase: $X"` where X is the amount of the purchase
 3.  The bank improperly calculated the purchases. Create a *different* loop style that iterates through the array and and adds $0.10 to each purchase amount then print the array
 4.  Create a loop that iterates through the array starting at the *end* of the array and going to the beginning
 
 */

var arrStoresAmounts = [ 1.25, 5.99, 45.0, 20.20, 9.99, 11.37, 49.99, 15.10, 33.33, 34.50 ]

for amount in arrStoresAmounts {
    print("Purchase: $\(amount)")
}

for i in 0..<arrStoresAmounts.count {
    arrStoresAmounts[i] += 0.10
}

var index = 0
repeat {
    print(arrStoresAmounts[index])
    index += 1
} while(index < arrStoresAmounts.count)

for i in stride(from: arrStoresAmounts.count - 1, to: -1, by: -1) {
    print("Index: \(i) -> \(arrStoresAmounts[i])")
}

//for i in (0..<arrStoresAmounts.count).reversed() {
//    print("Index: \(i) -> \(arrStoresAmounts[i])")
//}



