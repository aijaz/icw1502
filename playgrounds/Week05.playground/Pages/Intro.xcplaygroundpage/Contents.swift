//: Playground - noun: a place where people can play

import UIKit

enum Color {
    case Red
    case Green
    case Blue
}

var crayon = Color.Red
crayon
crayon = Color.Green
crayon = .Green


if (crayon == .Green) {
    print("It's green")
}
else if (crayon == .Red) {
    print("It's red")
}
else if (crayon == .Blue) {
    print("It's blue")
}

func actualColorIf(color: Color) -> UIColor {
    if (crayon == .Green) {
        return UIColor.greenColor()
    }
    else if (crayon == .Red) {
        return UIColor.redColor()
    }
    else if (crayon == .Blue) {
        return UIColor.blueColor()
    }
    return UIColor.blackColor()
}

func actualColor(color: Color) -> UIColor {
    switch color {
    case .Red:
        return UIColor.redColor()
    case .Green:
        return UIColor.greenColor()
    case .Blue:
        return UIColor.blueColor()
    }
}

let newCrayon = Color.Green
actualColor(newCrayon)


















