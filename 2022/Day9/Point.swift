struct Point: Hashable {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}
extension Point {
    static func +(lhs: Point, rhs: Point) -> Point {
            return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    static func +=(lhs: inout Point, rhs: Point) {
        lhs = lhs + rhs
    }
    static func -(lhs: Point, rhs: Point) -> Point {
            return Point(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    static func -=(lhs: inout Point, rhs: Point) {
        lhs = lhs - rhs
    }
}

extension Point: CustomStringConvertible {
    var description: String {
        "(\(x),\(y))"
    }
    
    
}
