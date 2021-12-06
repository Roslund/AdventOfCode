import Foundation


struct Point {
    let x: Int
    let y: Int

    func manhatanDistance(to other: Point) -> Int {
        abs(self.x - other.x) + abs(self.y - other.y)
    }
}

struct Line {
    let start: Point
    let end : Point

    func intersection(with other: Line) -> Point? {
        if start.x == end.x &&
            ([other.start.x, other.end.x].min()! ... [other.start.x, other.end.x].max()!).contains(start.x) &&
            ([start.y, end.y].min()! ... [start.y, end.y].max()!).contains(other.start.y) {
            return Point(x: start.x, y: other.start.y)
        } else if ([other.start.y, other.end.y].min()! ... [other.start.y, other.end.y].max()!).contains(start.y) &&
            ([start.x, end.x].min()! ... [start.x, end.x].max()!).contains(other.start.x) {
            return Point(x: other.start.x, y: start.y)
        }
        return nil
    }
}

enum Direction: Character {
    case Up     = "U"
    case Down   = "D"
    case Left   = "L"
    case Right  = "R"
}


func step(from pos: Point, _ direction: Direction, _ distance: Int) -> Point {
    switch direction {
    case .Up:
        return Point(x: pos.x, y: pos.y+distance)
    case .Down:
        return Point(x: pos.x, y: pos.y-distance)
    case .Left:
        return Point(x: pos.x-distance, y: pos.y)
    case .Right:
        return Point(x: pos.x+distance, y: pos.y)
    }
}

func parse(input: String) -> [Line] {
    let instructions = input.split(separator: ",")

    var lines: [Line] = []
    var previous = Point(x: 0, y: 0)

    for instruction in instructions {
        let direction = Direction(rawValue: instruction.first!)!
        let distance = Int(instruction.dropFirst())!

        let next = step(from: previous, direction, distance)
        lines.append(Line(start: previous, end: next))
        previous = next
    }

    return lines
}

let w1Lines = parse(input: wire1)
let w2Lines = parse(input: wire2)
var instersections: [Point] = []

for w1l in w1Lines {
    for w2l in w2Lines {
        if let intersection = w1l.intersection(with: w2l) {
            instersections.append(intersection)
        }
    }
}

let port = instersections.first!
let closest = instersections
    .dropFirst()
    .min { a, b in
        port.manhatanDistance(to: a) < port.manhatanDistance(to: b)
}!

print(port.manhatanDistance(to: closest))
