enum Direction: String {
    case Up = "U"
    case Down = "D"
    case Left = "L"
    case Right = "R"
    
    init?(rawValue: any StringProtocol) {
        self.init(rawValue: String(rawValue))
    }
    
    init?(rawValue: Character) {
        self.init(rawValue: String(rawValue))
    }
}

extension Direction: CustomStringConvertible {
    var description: String {
        rawValue
    }
}

extension Direction {
    func vector() -> Point {
        switch self {
            
        case .Up:
            return Point(x: 0, y: 1)
        case .Down:
            return Point(x: 0, y: -1)
        case .Left:
            return Point(x: -1, y: 0)
        case .Right:
            return Point(x: 1, y: 0)
        }
    }
}
