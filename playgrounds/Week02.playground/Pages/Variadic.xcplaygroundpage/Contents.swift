//: [Previous](@previous)

import Foundation

//let x = ["A", "B", "C"]
//for letter in x {
//    print(letter)
//}

//for i in 0 ..< x.count {
//    print(x[i])
//}
//

func hello(peopleNamed people: String...) {
    if people.isEmpty {
        print ("I have no one to say hello to")
    }
    for person in people {
        print("Hello, \(person)")
    }
}

hello(peopleNamed: "Ibrahim", "Fahim", "Zaki", "Arshia", "Saadat", "Hamza", "Amro")

hello()

//: [Next](@next)
