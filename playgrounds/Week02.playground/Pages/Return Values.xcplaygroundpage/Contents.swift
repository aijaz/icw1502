//: [Previous](@previous)

import Foundation

func hello(name: String) -> String {
    return "Hello, \(name)"
}

func hello(name: String) -> Int {
    return 5
}

let x:String = hello("friend")

let greeting:Int = hello("there")

greeting

//: [Next](@next)
