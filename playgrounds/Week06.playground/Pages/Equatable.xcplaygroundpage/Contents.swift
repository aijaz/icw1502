//: [Previous](@previous) [Next](@next)
import Foundation

struct Vertex {
    let x: Double
    let y: Double
    
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

























//: [Previous](@previous) [Next](@next)
