//: Playground - noun: a place where people can play

import UIKit

enum Color : String{
    case Red
    case Green = "Grassy"
    case Blue
    
    
}

let crayon = Color.Red

let paintBrush = Color(rawValue: "Blue")
paintBrush


crayon.rawValue

let crayon2 = Color.Green
crayon2
crayon2.rawValue

let crayon3 = Color(rawValue: "Red")
crayon3!.rawValue












