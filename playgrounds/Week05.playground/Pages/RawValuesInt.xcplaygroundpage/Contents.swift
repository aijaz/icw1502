//: Playground - noun: a place where people can play

import UIKit

enum Color : Int {
    case Red
    case Green
    case Blue = 4
    
    var hue : CGFloat {
        return CGFloat(rawValue)/3
    }
    
    var actualColor: UIColor {
        return UIColor (hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
}

var crayon = Color.Red
crayon.rawValue
crayon.actualColor

crayon = Color.Green
crayon.rawValue

crayon.actualColor


crayon = Color.Blue
crayon.actualColor













