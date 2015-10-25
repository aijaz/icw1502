//: [Previous](@previous) [Next](@next)
import Foundation

struct Vertex {
    private(set) var x, y: Double
    init(x: Double = 0.0, y: Double = 0.0) { // designated initializer
        self.x = x
        self.y = y
    }
    var magnitude: Double {
        get {
            return (sqrt(x*x + y*y))
        }
        set {
            let multiplier = newValue / magnitude
            x = x * multiplier
            y *= multiplier
        }
    }
}

var point = Vertex(x: 3, y: 4)
point
point.x
point.y


point.magnitude

point.magnitude = 169
point.x
point.y






















//: [Previous](@previous) [Next](@next)
