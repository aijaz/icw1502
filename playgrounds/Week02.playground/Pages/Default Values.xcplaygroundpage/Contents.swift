//: [Previous](@previous)

import Foundation


func hello(name: String = "world", numberOfTimes: Int = 1) {
    for _ in 1 ... numberOfTimes {
        print("Hello, \(name)")
    }
}

hello()
hello("Aijaz")
hello("class", numberOfTimes: 3)
hello(numberOfTimes: 5)

//: [Next](@next)
