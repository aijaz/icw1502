//: [Previous](@previous) [Next](@next)

struct Vertex {
    let x, y: Double
    init(x: Double = 0.0, y: Double = 0.0) { // designated initializer
        self.x = x
        self.y = y
    }
    init(xandy: Double) {
        self.init(x: xandy, y: xandy)
    }
}

let point = Vertex(x: 3, y: 4)

point

point.x
point.y

let point2 = Vertex()
point2

let point3 = Vertex(xandy: 5)
point3.x
point3.y

//: [Previous](@previous) [Next](@next)
