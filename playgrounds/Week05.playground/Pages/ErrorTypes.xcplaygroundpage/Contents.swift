//: [Previous](@previous)

import Foundation

enum InputSizeError : ErrorType {
    case NegativeNumberError
    case NumberIsTooLargeError (amountOver: Int)
}

func simpleDouble(input: Int) -> Int {
    return input * 2
}

simpleDouble(3)
simpleDouble(-3)

func double(input: Int) throws -> Int {
    if (input < 0) {
        throw InputSizeError.NegativeNumberError
    }
    else if input > 49 {
        throw InputSizeError.NumberIsTooLargeError(amountOver: input - 49)
    }
    else {
        return input * 2
    }
}

func cautiousDoubler (input: Int) {
    do {
        print ("The double of \(input) is ", try double(input))
    }
    catch InputSizeError.NumberIsTooLargeError(let excess){
        print ("ERROR: The amount is too large by \(excess)")
    }
    catch  {
        print ("Error: ", error)
    }
}

cautiousDoubler(3)
cautiousDoubler(-3)
cautiousDoubler(51)


let ten = try! double(5)

let newDouble = try? double(3)

let ints = [6, -1, 12, 100, 20]

let doubleInts = ints.flatMap { element in try? double(element) }
doubleInts













//: [Next](@next)
