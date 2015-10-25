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
    
    func periodOfRevolution()->Double {
        switch self {
        case .Mercury :
            return Double(87.96)
        case .Venus:
            return 224.68
        case .Earth:
            return 365.26
        case .Mars:
            return 686.98
        case .Jupiter:
            return 11.862 * ObjectInSpace.Earth.periodOfRevolution()
        case .Saturn:
            return 29.456 * ObjectInSpace.Earth.periodOfRevolution()
        case .Uranus:
            return 84.07 * ObjectInSpace.Earth.periodOfRevolution()
        case .Neptune:
            return 164.81 * ObjectInSpace.Earth.periodOfRevolution()
        case .Pluto:
            return 247.7 * ObjectInSpace.Earth.periodOfRevolution()
        }
    }
}

let mercury:ObjectInSpace = .Mercury

mercury.periodOfRevolution()


//: [Previous](@previous) [Next](@next)

