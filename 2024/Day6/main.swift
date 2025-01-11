extension Direction {
    mutating func turnRight() {
        switch self {
        case .Up:
            self = .Left
        case .Right:
            self = .Up
        case .Down:
            self = .Right
        case .Left:
            self = .Down
        }
    }
}

let map = input.toMatrix()

var y = map.firstIndex(where: { $0.contains(["^"]) })!
var x = map[y].firstIndex(of: "^")!
let startPosition = Point(x, y)


//Part 21
var position = Point(x, y)
var direction = Direction.Down
var visitedPositions: Set<Point> = [position]

repeat  {
    let next = position + direction.vector()
    if map[next.y, next.x] == "#" {
        direction.turnRight()
    }
    
    visitedPositions.insert(position)
    position += direction.vector()

} while (map.indexIsValid(row: position.y, column: position.x))


visitedPositions.count.print(prefix: "Part 1:")


//Part2

var looppoistions = 0

for row in 0..<map.rows {
    print("\(row) of \(map.rows)")
    
    for column in 0..<map.columns {
        if Point(row, column) == startPosition {
            continue
        }
        
        var visited: [Point: [Direction]] = [:]
        var map = map
        map[row][column] = "#"
        
        var position = startPosition
        var direction = Direction.Down
        
        repeat  {
            if visited[position, default: []].contains(direction) {
                looppoistions += 1
//                print("")
//                map[row][column] = "O"
//                map[startPosition.y][startPosition.x] = "^"
//                map.monospacedPrint()
//                print("")
                break
            }
            
            visited[position, default: []].append(direction)
            
//            if direction == .Up || direction == .Down {
//                map[position.y][position.x] = "|"
//            }
//            if direction == .Left || direction == .Right {
//                map[position.y][position.x] = "-"
//            }
            
            let next = position + direction.vector()
            if map[next.y, next.x] == "#" {
                direction.turnRight()
                //map[position.y][position.x] = "+"
            }
            position += direction.vector()

        } while (map.indexIsValid(row: position.y, column: position.x))
    }
}

print(looppoistions)


//1916 to high
//1900 to low
