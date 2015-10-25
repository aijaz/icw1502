//: [Previous](@previous) [Next](@next)
import Foundation

struct Vertex {
    var x: Double
    let y: Double
    
    func mag() -> Double {
        return sqrt(x*x + y*y)
    }
    
    mutating func moveByX(deltaX: Double) {
        x += deltaX
    }
    
    func movedByX(deltaX: Double) -> Vertex {
        return Vertex(x: x+deltaX, y: y)
    }
}

extension Vertex : CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex : Equatable {}

func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return (lhs.x == rhs.x && lhs.y == rhs.y)
}


var point = Vertex(x: 3, y: 4)
point
print("On this line, my point is \(point)")

var point2 = Vertex(x: 3, y: 4)
point2

point == point2
point != point2

point.moveByX(50)

let point3 = point.movedByX(50)
point

























//: [Previous](@previous) [Next](@next)
