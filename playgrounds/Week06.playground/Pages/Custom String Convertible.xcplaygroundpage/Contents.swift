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

var point = Vertex(x: 3, y: 4)
point

print("On this line, my point is \(point)")


























//: [Previous](@previous) [Next](@next)
