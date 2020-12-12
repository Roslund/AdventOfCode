import Foundation

struct Coord: Equatable {
    var x, y: Int
    
    func scaled(_ scalar: Int) -> Coord {
        Coord(x: x*scalar, y: y*scalar)
    }
    
    mutating func add(_ other: Coord) {
        x = x+other.x
        y = y+other.y
    }
    
    func rotated(_ degrees: Int) -> Coord {
        let r = 0.017453 * Double(degrees)
        let c = Int(round(cos(r)))
        let s = Int(round(sin(r)))
        
        let newx =  x*c - y*s
        let newy = x*s + y*c
        
        return Coord(x: newx, y: newy)
    }
}

enum Direction: String {
    case North = "N"
    case East  = "E"
    case South = "S"
    case West  = "W"
    
    var cord: Coord {
        switch self {
        case .North: return Coord(x: 1, y: 0)
        case .East:  return Coord(x: 0, y: 1)
        case .South: return Coord(x: -1, y: 0)
        case .West:  return Coord(x: 0, y: -1)
        }
    }
    
    var rotation: Int {
        switch self {
        case .North: return 0
        case .East:  return 90
        case .South: return 180
        case .West:  return 270
        }
    }
    
    init(degrees: Int){
        switch degrees {
        case 0:         self = .North
        case 90,  -270: self = .East
        case 180, -180: self = .South
        case 270, -90:  self = .West
        default: fatalError("Not even rotation")
        }
    }
    
    func rotated(_ degreees: Int) -> Direction {
        Direction(degrees: (self.rotation + degreees) % 360)
    }
}

struct Ship {
    var position = Coord(x: 0, y: 0)
    var direction = Direction.East
    var waypoint = Coord(x: 1, y: 10)
    
    func distanceFromStrat() -> Int {
        abs(position.x) + abs(position.y)
    }
    
    mutating func part1(_ instruction: Substring) {
        let command = String(instruction.first!)
        let unit = Int(String(instruction.dropFirst()))!
        
        switch command {
        case "F": position.add(waypoint.scaled(unit))
        case "L": direction = direction.rotated(-1*unit)
        case "R": direction = direction.rotated(unit)
        default: //just asume it's a movement
            position.add(Direction(rawValue: command)!.cord.scaled(unit))
        }
    }
    
    mutating func part2(_ instruction: Substring) {
        let command = String(instruction.first!)
        let unit = Int(String(instruction.dropFirst()))!
        
        switch command {
        case "F": position.add(waypoint.scaled(unit))
        case "L": waypoint = waypoint.rotated(-1*unit)
        case "R": waypoint = waypoint.rotated(unit)
        default: //just asume it's a movement
            waypoint.add(Direction(rawValue: command)!.cord.scaled(unit))
        }
        print("pos:", position, "way:", waypoint)
    }

}

let testinput = """
F10
N3
F7
R90
F11
"""

var ship = Ship()

for instruction in input.split(separator: "\n") {
    ship.part2(instruction)
}

print(ship.distanceFromStrat())

