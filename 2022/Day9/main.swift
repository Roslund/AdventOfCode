let instructions = input.split(separator: /\n/).map { line in
    (Direction(rawValue: line.first!)!, Int(line.dropFirst(2))!)
}

print(instructions)

func tailVector(head: Point, tail: Point) -> Point {
    let distance = head - tail
    switch (distance.x, distance.y) {
    case let (a, b) where abs(a) < 2 && abs(b) < 2:
        return Point(0, 0)
    
    case (0, 2):
        return Point(0, 1)
    case (0, -2):
        return Point(0, -1)
        
    case (2, 0):
        return Point(1, 0)
    case (-2, 0):
        return Point(-1, 0)
        
    case (1, 2):
        return Point(1, 1)
    case (1, -2):
        return Point(1, -1)
    case (-1, 2):
        return Point(-1, 1)
    case (-1, -2):
        return Point(-1, -1)
        
    case (2, 1):
        return Point(1, 1)
    case (-2, 1):
        return Point(-1, 1)
    case (2, -1):
        return Point(1, -1)
    case (-2, -1):
        return Point(-1, -1)
        
    case (2, 2):
        return Point(1, 1)
    case (2, -2):
        return Point(1, -1)
    case (-2, 2):
        return Point(-1, 1)
    case (-2, -2):
        return Point(-1, -1)

    default:
        fatalError()
    }
}



var head = Point(x: 0, y: 0)
var tail = Point(x: 0, y: 0)
var visited: [Point] = [tail]

for (direction, distance) in instructions {
    for _ in 1...distance {
        head += direction.vector()
        tail += tailVector(head: head, tail: tail)
        visited.append(tail)
    }
}

Set(visited).count.print(prefix: "Part 1:")


var snake = [Point].init(repeating: Point(0, 0), count: 10)
visited = [Point(0, 0)]

for (direction, distance) in instructions {
    for _ in 1...distance {
        snake[0] += direction.vector()
        
        for i in 1..<10 {
            snake[i] += tailVector(head: snake[i-1], tail: snake[i])
        }
        
        visited.append(snake.last!)
    }
}

Set(visited).count.print(prefix: "Part 2:")
