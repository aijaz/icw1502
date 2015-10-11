//: [Previous](@previous)

import Foundation

func hello() {
    print("Hello , world!")
    print("I mean it")
}

func hello(intensity: Int) {
    print("Hello \(intensity) times, world!")
    print("I mean it")
}

func hello(name: String) {
    print("Hello, \(name)!!!")
}

func hello(name: String, numberOfTimes: Int) {
    for _ in 1 ... numberOfTimes {
        hello(name)
    }
}

// [0 .. 5)

hello(1000)
hello("Aijaz Abdulaziz Ansari, the one who lives in Glendale Heights")
hello("iOS class", numberOfTimes: 3)

//: [Next](@next)
