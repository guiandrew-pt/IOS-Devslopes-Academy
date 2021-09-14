/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
//class Human {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//let humanBruce = Human(name: "Bruce", age: 31)
//let humanBea = Human(name: "Bea", age: 27)
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
//class Human: CustomStringConvertible {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    var description: String {
//        return "The human name is \(name) and he have \(age) years old!"
//    }
//}
//
//let humanBruce = Human(name: "Bruce", age: 31)
//let humanBea = Human(name: "Bea", age: 27)
//
//print(humanBruce)
//print(humanBea)
/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
//class Human: CustomStringConvertible, Equatable {
//    var name: String
//    var age: Int
//
//    var description: String {
//        return "The human name is \(name) and he have \(age) years old!"
//    }
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//}
//
//let humanBruce = Human(name: "Bruce", age: 31)
//let humanBea = Human(name: "Bea", age: 27)
//
//print(humanBruce)
//print(humanBea)
//
//print(humanBruce == humanBea)
//print(humanBruce != humanBea)
/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
//class Human: CustomStringConvertible, Equatable, Comparable {
//    var name: String
//    var age: Int
//
//    var description: String {
//        return "The human name is \(name) and he have \(age) years old!"
//    }
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//
//    static func < (lhs: Human, rhs: Human) -> Bool {
//        return lhs.age < rhs.age
//    }
//}
//
//let humanBruce = Human(name: "Bruce", age: 31)
//let humanBea = Human(name: "Bea", age: 27)
//let humanJim = Human(name: "Jim", age: 29)
//let humanMichele = Human(name: "Michele", age: 30)
//let humanAnna = Human(name: "Anna", age: 30)
//
//let people: [Human] = [humanBruce, humanMichele, humanAnna, humanJim, humanBea]
//var sortedPeople: [Human] = people.sorted(by: <)
//print(sortedPeople)
/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */
import Foundation

class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    var name: String
    var age: Int
    
    var description: String {
        return "The human name is \(name) and he have \(age) years old!"
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

let humanBruce = Human(name: "Bruce", age: 31)
let humanBea = Human(name: "Bea", age: 27)

let encoderJson = JSONEncoder()
let data = try? encoderJson.encode(humanBea)

if let thisData = data {
    let str = String(data: thisData, encoding: .utf8)
    if let string = str {
        print(string)
    }
}
//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
