//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let friend = "Aijaz"

func hello(name: String) -> String {
    let greeting = "Hello, \(name)!"
    return greeting
}
hello("Erfan")

func bonjour(name: String) -> String {
    let greeting = "Bonjour, \(name)!"
    return greeting
}
bonjour("Erfan")

// simplify

func greet(name: String, withSalutation salutation: String) -> String {
    let greeting = "\(salutation), \(name)!"
    return greeting
}

greet(friend, withSalutation: "Hello")
greet(friend, withSalutation: "Bonjour")
greet(friend, withSalutation: "Hey there")
greet("Joe", withSalutation: "Hello")

typealias GreetingFunction = (String)->String

func createGreetingFunctionWithSalutation(salutation: String)->GreetingFunction {
    func greetingFunction(name: String) -> String {
        let greeting = "\(salutation), \(name)!"
        return greeting
    }
    return greetingFunction
}

let heyThere = createGreetingFunctionWithSalutation("Hey there")
let salaam = createGreetingFunctionWithSalutation("As-salaamu alaikum")

salaam("iOS Class")

heyThere("everyone")

createGreetingFunctionWithSalutation("Yo")("Adrian")

func useGreeting(greetingFor: GreetingFunction,
    forPeopleWithName people: String...) -> String {
        var tempGreeting = ""
        for person in people {
            tempGreeting += greetingFor(person) + "\n"
        }
        return tempGreeting
}

useGreeting(salaam, forPeopleWithName: "Aijaz", "Fouzie", "Fahim", "Arshia", "Erfan", "Hamza")

// Type Alias

typealias MilliSeconds = Int

func timeIt(name: String)->MilliSeconds {
    return 500
}

//: [Next](@next)
