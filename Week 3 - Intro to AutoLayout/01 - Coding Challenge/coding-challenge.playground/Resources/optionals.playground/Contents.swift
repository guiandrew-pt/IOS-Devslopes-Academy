// Optionals
// Optionals let developers specify which data could be nil
// and which data is guarnateed to not be nil

import UIKit

/*
struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func printFullName() {
        let middle = middleName ?? ""
        print("\(firstName) \(middle) \(lastName)")
    }
}

var person1 = Person(firstName: "James", middleName: nil, lastName: "Dean")
var person2 = Person(firstName: "Bob", middleName: "Leroy", lastName: "Jenkis")

person1.printFullName()
person2.printFullName()
 */

class Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    let spouse: Person?
    
    init(firstName: String, middleName: String?, lastName: String, spouse: Person?) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.spouse = spouse
    }
    
    func getFullName() -> String {
        let middle = middleName ?? ""
        return "\(firstName) \(middle) \(lastName)"
    }
}

let person = Person(firstName: "Bruce", middleName: "Ki", lastName: "See", spouse: nil)

//if let spouseName = person.spouse?.getFullName() {
//    print(spouseName)
//} else {
//    print("\(person.firstName) does not have a spouse.")
//}
// OR:
let spouseName = person.spouse?.getFullName() ?? "\(person.firstName) does not have a spouse."
print(spouseName)

// Don't do this
// print(person.spouse!.getFullName()) // This give a runtime error.

// If you have an optional (the question mark ?), make sure to check if it is nill.
// Always use optional chaining.
// Never force unwrap optionals, or you will get runtime crashes.

// @IBOutlet weak var someButton: UIButton! // Implicitlt unwrapped, The value will be there.

let mywebsite = URL(string: "https://www.google.com")! // force unwrapping
