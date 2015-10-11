//: [Previous](@previous)

import Foundation


var two = 2

func double(inout input:Int) {
    input = input * 2
    input
}

two
double(&two)
two

// Closures

func trebleFunction(input: Int)->Int {
    return 3 * input
}
func trebleFunction(input: Double)->Double {
    return 3.0 * input
}

trebleFunction(2)
trebleFunction(2.2)


var x = 4
typealias Converter=(Int)->Int

let trebleClosure = {(input:Int)->Int in
    return 3 * input
}

trebleClosure(12)

func modify(input: Int, byApplying operation: (Int)->Int)->Int {
    return operation(input)
}

func modify(input: Double, byApplying operation: (Double)->Double)->Double {
    return operation(input)
}


modify(3, byApplying: trebleFunction)

modify(3, byApplying: trebleClosure)

modify(3, byApplying: {(input:Int)->Int in
    return 4 * input
})

modify(3){(input:Int)->Int in
    return 4 * input
}

modify(3){(input)->Int in
    return 4 * input
}

modify(3){(input) in
    return 4 * input
}

modify(3){(input) in
    4 * input
}


var result = modify(3){ input in 4 * input }

result

result = modify(5){ 4 * $0 }

result


// Generics

var resultDouble = modify(2.2) { input in input * 3.0 }
resultDouble


func smartModify<MyType>(input: MyType, byApplying operation: (MyType)->MyType)->MyType {
    return operation(input)
}

var newInt:Int //smartModify(7, byApplying: {input in input * 3})

newInt = smartModify(7, byApplying: {(input:Int)->Int in
                                      return input * 3
                                    } )

newInt = smartModify(7, byApplying: {input in input * 3})

newInt

var newDouble:Double
newDouble = smartModify(2.2) {input in input * 3}
newDouble

var impliedDouble = smartModify(1.1) {input in input * 3}
impliedDouble

var wrongDouble = smartModify(1.0) { input in input * 3 }
wrongDouble

var greeting = smartModify("Hello") { input in "\(input), world!" }
greeting

// Transform An array of sales numbers to an array of dollar amounts

func transform<T, U>(input: [T], byApplying f:(T)->U) -> [U] {
    var transformedArray = [U]() // create an empty Array of type U
    for element in input {
        transformedArray.append(f(element))
    }
    return transformedArray
}




let salesData = [2, 10, 30, 20, 5, 3, 4]

let priceOfApp = 0.99
let ourCut = 0.7

let priceData = transform(salesData) { salesCount in Double(salesCount) * priceOfApp * ourCut }
priceData

let taxDue = transform(salesData) { salesCount in salesCount >= 10 }
taxDue

let correctedTaxDue = transform(salesData) { Double($0) * priceOfApp * ourCut >= 10.00 }
correctedTaxDue
let taxDueTwo = transform(salesData) { $0 >= 10 }
taxDueTwo

var total:Double = 0.0
for price in priceData {
    total += price
}
total

extension Array {
    func transform<U> (f:(Element)->U)->[U] {
        var transformedArray = [U]()
        for element in self {
            transformedArray.append(f(element))
        }
        return transformedArray
    }
}

let moreThanFive = salesData.transform { $0 > 5 }
moreThanFive
let revenue = salesData.map { Double($0) * priceOfApp * ourCut }
revenue















//: [Next](@next)
