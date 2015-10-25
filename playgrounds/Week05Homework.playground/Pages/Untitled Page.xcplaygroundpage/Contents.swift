//: [Previous](@previous) [Next](@next)



enum Planet:Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
    case Pluto
}

var planet:Planet = .Mercury

planet

enum DistantObject:Int {
    case Mercury = 36
    case Venus = 67
    case Earth = 93
    case Mars = 228
    case Jupiter = 778
    case Saturn = 1427
    case Uranus = 2871
    case Neptune = 4497
    case Pluto = 5913
}

enum ObjectInSpace:String {
    case Mercury
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
    case Pluto
}

var object:ObjectInSpace = .Mercury

object
object.rawValue


//: [Previous](@previous) [Next](@next)

