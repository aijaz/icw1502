//: Playground - noun: a place where people can play

import Cocoa

let person = "Swift Programmer"

let person2:String

person2 = "Aijaz"


let shouldRun:Bool
shouldRun = true

let travel: String

if shouldRun {
    travel = "run"
}
else {
    travel = "walk"
}

print ("I am going to \(travel)")

// Perfectly good use of a var variable

func hello(name: String, numberOfTimes: Int) -> String {
    var tempGreeting = ""
    for _ in 1 ... numberOfTimes {
        tempGreeting += "Hello, \(name)!\n"
    }
    return tempGreeting
}

hello("Aijaz", numberOfTimes: 5)


let five = 5
let threepointfour = 3.4
let simpleProduct = 5 * 3.4
//let product = five * threepointfour
let workingProduct = Double(five) * threepointfour

let i1 = 5
//i1 = nil

var name:String?
name = "Aijaz"
name = nil
name = "Aijaz"
print(name)
print(name!)
name = nil
print (name)
name = "aijaz"


if name != nil {
    print (name!)
}
else {
    print ("No name given")
}


if let validName = name {
    print (validName)
}
else {
    print ("No name given")
}



















