//: Playground - noun: a place where people can play

import UIKit

// Week3 Hw

// Create a function called 'double' that takes in an integer and returns that integer multiplied by 2
// Create a similar function called square that squares the input
// Create a similar function called factorial that returns the factorial of the input
// EXTRA CREDIT: Create two factorial functions - One that works recursively and one that works iteratively (with a loop)
// Create an array of your functions
//
// Create another function called performOperations that takes in a list of functions like you created, and a list of numbers. // The function should call each operation on each number and print out the value//
//

typealias Converter = (Int)->Int

func double(x: Int) -> Int {
    return x * 2
}
double(3)

func square(x: Int) -> Int {
    return x * x
}
square(5)

func factorialRecursive (x: Int) -> Int {
    if x <= 2 {
        return x
    }
    return x * factorialRecursive(x - 1)
}
factorialRecursive(3)


func factorialIterative(var x: Int) -> Int {
    if x <= 2 {
        return x
    }
    
    var answer = x
    while (x > 1) {
        x-- // currentX = currentX - 1
        answer = answer * x // answer *= currentX
    }
    return answer
}

factorialIterative(6)

let ourFunctions = [double, square, factorialIterative]

func performOperations (operations: [Converter], onNumbers numbers: [Int]) {
    for number in numbers {
        for operation in operations {
            print("\(number) => \(operation(number))")
        }
        print("---")
    }
}

performOperations(ourFunctions, onNumbers: [0,1,2,4,6])


// Run performOperations like this:
//
//     let operations = [double, square, factorialRecursive, factorialIterative]
//
//     performOperations(operations, onNumbers: [0, 1, 2, 3])
//
//     // This should print:
//     0 => 0
//     0 => 0
//     0 => 0
//     0 => 0
//     --
//     1 => 2
//     1 => 1
//     1 => 1
//     1 => 1
//     --
//     2 => 4
//     2 => 4
//     2 => 2
//     2 => 2
//     --
//     3 => 6
//     3 => 9
//     3 => 6
//     3 => 6
//     --
//
// Create a function called createMultiplierWithOperand that takes in one Integer named 'operand'. This function should return a // function that takes in an Integer and returns that Integer multiplied by 'operand'.  For example: //
//
//     let treble = createMultiplierWithOperand(3)
//
//     let newOps = [double, treble, square]
//     performOperations(newOps, onNumbers: [3, 5, 9])
//
//     This prints:
//     3 => 6
//     3 => 9
//     3 => 9
//     --
//     5 => 10
//     5 => 15
//     5 => 25
//     --
//     9 => 18
//     9 => 27
//     9 => 81
//     --
//

func createMultiplierWithOperand(operand: Int)->Converter {
    func newConverter (x: Int) -> Int {
        return operand * x
    }
    return newConverter
}

let treble = createMultiplierWithOperand(3)
treble
treble(10)
let newOps = [double, treble]
performOperations(newOps, onNumbers: [1,2,3,4,5,6,7,8,9,10])










