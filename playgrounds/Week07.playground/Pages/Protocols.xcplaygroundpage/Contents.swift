//: Playground - noun: a place where people can play

import Foundation

var a = 3
print(a)

var v = Vertex(x: 3, y: 4)

var v2 = v.moveByX(3)

var rect1 = Rectangle(topLeftCorner: Vertex(x: 3, y: 4), width: 10, height: 20)


var rect2 = rect1.moveByX(50)

v.location
rect1.location

func shiftLeft(movableThing: Movable) -> Movable {
    return movableThing.moveByX(-1)
}

v
shiftLeft(rect2)

v.whatAmI()
var v3 = shiftLeft(v) as! Vertex
v3.whatAmI()

func newShiftLeft<T: Movable>(movableThing: T) -> T {
    return movableThing.moveByX(-1) 
}

var v4 = newShiftLeft(v)
v4.whatAmI()

v.whereAmI()
rect1.whereAmI()







