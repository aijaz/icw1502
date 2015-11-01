
// func moveByX(deltaX: Double) -> Movable

public protocol Movable {
    var location: Vertex {get}
    func moveByX(deltaX: Double) -> Self
    func whereAmI() -> Vertex
}

extension Movable {
    public func whereAmI() -> Vertex {
        return self.location
    }
}