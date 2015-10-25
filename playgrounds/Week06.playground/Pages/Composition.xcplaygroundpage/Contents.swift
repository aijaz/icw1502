//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var point = Vertex(x: 3, y: 4)

var rect = Rectangle(topLeftCorner: point, width: 6, height: 8)

rect

var rect2 = rect.moveByX(100)

rect2

var rect3 = rect2
rect3
rect2

rect2.doubleArea()
rect2
rect3


//: [Next](@next)
