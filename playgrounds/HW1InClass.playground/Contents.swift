//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func carDescription (make make: String, model: String, color: String, numberOfDoors: Int = 4, accessories: String...) -> (numberOfAccessories: Int, description: String) {
    
    let baseDescription = "\(color) \(numberOfDoors)-door \(make) \(model)"
    if (accessories.isEmpty) {
        return (0, "\(baseDescription) with no accessories")
    }
    let numAccessories = accessories.count
    
    var description = "\(baseDescription) with the following accessories:\n"
    
    for accessory in accessories {
        description = "\(description)  \(accessory)\n"
    }
    
    return (numAccessories, description)
}
let d1 = carDescription(make: "Toyota",
    model: "Corolla",
    color: "Black",
    accessories: "Anti-lock brakes")
print(d1.numberOfAccessories, terminator: "\n----\n")


let d2 = carDescription(make: "Ford",
    model: "Focus",
    color: "Red",
    numberOfDoors: 2)
print(d2, terminator: "\n----\n")


let d3 = carDescription(make: "Honda",
    model: "Accord",
    color: "White",
    accessories: "Anti-lock brakes",
    "Fog lights",
    "Remote Starter")
print(d3.description)

