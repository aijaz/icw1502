//: [Previous](@previous)

let numbers = ["one": 1, "two":2, "three": 3]

for k in numbers.keys {
    print(k)
}

for v in numbers.values {
    print(v)
}

for number in numbers {
    print(number)
}

let one = numbers["one"]
let four = numbers["four"]

if let validNumber = four {
    print("Number has value: \(validNumber)")
}
else {
    print ("Number is nil")
}

func canUnwrap(potentialNumber: Int?) -> Bool {
    if let _ = potentialNumber {
        return true
    }
    else {
        return false
    }
}

canUnwrap(one)
canUnwrap(four)

func guardedCanUnwrap(potentialNumber: Int?) -> Bool {
    guard let _ = potentialNumber else {
        return false
    }
    return true
}


//: [Next](@next)
