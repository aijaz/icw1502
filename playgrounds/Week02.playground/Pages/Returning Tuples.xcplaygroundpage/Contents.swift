//: [Previous](@previous)

import Foundation

//func hello(names: String...) -> String {
//    return names.reduce("Hello"){ $0 + "\n" + $1}
//}

func hello(names: String...) -> (count: Int, greeting: String) {
    return (names.count, names.reduce("Hello"){ $0 + "\n" + $1})
}

let tuple = hello("A", "B", "C")
tuple.0
tuple.1

tuple.count
tuple.greeting



//: [Next](@next)
