import Foundation

struct Size {
    let width: Double
    let height: Double
}

extension Size : CustomStringConvertible {
    var description: String {
        return "(\(width)x\(height))"
    }
}

extension Size : Equatable {}

func ==(lhs: Size, rhs: Size) -> Bool {
    return (lhs.width == rhs.width && lhs.height == rhs.height)
}

