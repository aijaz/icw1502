import Foundation

public struct Rectangle {
    let topLeftCorner: Vertex
    var size: Size
    public let location: Vertex
    
    public init (topLeftCorner: Vertex, width w: Double, height h: Double) {
        self.topLeftCorner = topLeftCorner
        self.size = Size(width: w, height: h)
        location = Vertex(x: topLeftCorner.x + w/2, y: topLeftCorner.y + h/2)
    }
    
    mutating public func doubleArea() {
        size = Size(width: size.width * 2, height: size.height)
    }
}

extension Rectangle:Movable {
    private init(topLeftCorner: Vertex, size: Size) {
        self.topLeftCorner = topLeftCorner
        self.size = size
        location = Vertex(x: topLeftCorner.x + size.width/2,
            y: topLeftCorner.y + size.height/2)
    }
    
    public func moveByX(deltaX: Double) -> Rectangle {
        let movedTopLeftCorner = topLeftCorner.moveByX(deltaX)
        return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
    }
    
    public func whereAmI() -> Vertex {
         return topLeftCorner
    }
}

extension Rectangle : CustomStringConvertible {
    public var description: String {
        return "\(size) at \(topLeftCorner)"
    }
}

extension Rectangle : Equatable {}

public func ==(lhs: Rectangle, rhs: Rectangle) -> Bool {
    return (lhs.size == rhs.size && lhs.topLeftCorner == rhs.topLeftCorner)
}
