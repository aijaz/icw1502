//: [Previous](@previous)


var str = "Hello, playground"

let numbers = [0, 1, 10, 44]
numbers[2]
numbers[0]
numbers[3]

let strs = ["Aijaz", "Ansari"]

typealias GreetingFunction = (String)->String

/**
This creates a greeting function

- parameter salutation: A string that will be used to greet the person

- returns: a GreetingFunction
*/
func createGreetingFunctionWithSalutation(salutation: String)->GreetingFunction {
    func greetingFunction(name: String) -> String {
        let greeting = "\(salutation), \(name)!"
        return greeting
    }
    return greetingFunction
}


 /// This is an array of greeting functions
let greetings = [
    createGreetingFunctionWithSalutation("Hello")
    , createGreetingFunctionWithSalutation("As-salaamu alaikum")
    , createGreetingFunctionWithSalutation("Hey there")
    , createGreetingFunctionWithSalutation("Yo")
]

let helloSwiftProgrammer = greetings[0]("Swift Programmer")

let salutations = ["Hello", "Hi", "Hey there"]
let simplerGreetings = salutations.map(createGreetingFunctionWithSalutation)
simplerGreetings[0]("Aijaz")
simplerGreetings[1]("Aijaz")
simplerGreetings[2]("Aijaz")

var drinkSizes = Array(count: 3, repeatedValue: "Big Gulp")
drinkSizes[0] = "Small"
drinkSizes[1] = "Medium"
drinkSizes[2] = "Large"
drinkSizes.append("XLarge")


drinkSizes
drinkSizes.count

for index in 0 ..< drinkSizes.count {
    print (drinkSizes[index])
}

for index in 0 ..< drinkSizes.count {
    print ("\(index) \(drinkSizes[index])")
}


for size in drinkSizes {
    print (size)
}

for (index, size) in drinkSizes.enumerate() {
    print ("\(index): \(size)")
}


//: [Next](@next)
