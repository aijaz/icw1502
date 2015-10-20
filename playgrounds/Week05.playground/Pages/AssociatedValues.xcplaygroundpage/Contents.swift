//: [Previous](@previous)

import Foundation

enum PrimaryColor : String {
    case Red
    case Blue
    case Green
}


enum Desktop {
    case Black
    case White
    case Colored(PrimaryColor)
    case Tiled(PrimaryColor, PrimaryColor, Int, Int)
}

let blackBackground = Desktop.Black
let whiteBackground = Desktop.White

let redBackground = Desktop.Colored(PrimaryColor.Red)
let blueBackground = Desktop.Colored(.Blue)
let tiledBackground = Desktop.Tiled(.Red, .Blue, 8, 8)

let backgrounds = [ Desktop.White
                    , Desktop.Colored(.Red)
                    , Desktop.Black
                    , Desktop.Colored(.Blue)
                    , tiledBackground
]


for background in backgrounds {
    switch background {
    case .Colored(let primaryColor) :
        print("This background color is \(primaryColor.rawValue).")
    case .Tiled(let firstColor, let secondColor, let numRows, let numCols) :
        print ("This background is tiled using colors \(firstColor.rawValue) and \(secondColor.rawValue) with \(numRows) rows and \(numCols) columns")
    default:
        print("This background color has no color")
    }
}

// (10x + 15y + 20z)
// 5(2x + 3y + 4z)

for background in backgrounds {
    switch background {
    case .Colored(let primaryColor) :
        print("This background color is \(primaryColor.rawValue).")
    case let .Tiled(firstColor, secondColor, numRows, numCols) :
        print ("This background is tiled using colors \(firstColor.rawValue) and \(secondColor.rawValue) with \(numRows) rows and \(numCols) columns")
    default:
        print("This background color has no color")
    }
}


var tile2 = tiledBackground
tiledBackground

tile2

tile2 = .Black
tiledBackground






//: [Next](@next)
