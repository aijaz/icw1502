import Foundation

public struct Rectangle {
    let topLeftCorner: Vertex
    var size: Size
    
    public init (topLeftCorner: Vertex, width w: Double, height h: Double) {
        self.topLeftCorner = topLeftCorner
        self.size = Size(width: w, height: h)
    }
    
    private init(topLeftCorner: Vertex, size: Size) {
        self.topLeftCorner = topLeftCorner
        self.size = size
    }
    
    public func moveByX(deltaX: Double) -> Rectangle {
        let movedTopLeftCorner = topLeftCorner.moveByX(deltaX)
        return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
    }
    
    mutating public func doubleArea() {
        size = Size(width: size.width * 2, height: size.height)
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
