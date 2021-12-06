import Foundation

struct Point: Hashable {
    let x: Int
    let y: Int
}

struct Line: Hashable {
    let start: Point
    let end: Point
}

let lines = input.components(separatedBy: .newlines).map { line -> Line in
    let t = line.components(separatedBy: " -> ")
    let a = t.first!.split(separator: ",")
    let b = t.last!.split(separator: ",")
    return Line(start: Point(x: Int(a.first!)!, y: Int(a.last!)!), end: Point(x: Int(b.first!)!, y: Int(b.last!)!))
    
}

print(lines.first!)

var board: [Point: Int] = [:]

for line in lines {
    if line.start.x == line.end.x {
        let x = line.start.x
        let min = [line.start.y, line.end.y].min()!
        let max = [line.start.y, line.end.y].max()!
        
        for y in min...max {
            board[Point(x: x, y: y), default: 0] += 1
        }
    }
        
    else if line.start.y == line.end.y {
        let y = line.start.y
        let min = [line.start.x, line.end.x].min()!
        let max = [line.start.x, line.end.x].max()!
        
        for x in min...max {
            board[Point(x: x, y: y), default: 0] += 1
        }
    }
    
    else {
        var x = line.start.x
        var y = line.start.y
        
        let kx = x < line.end.x ? 1 : -1
        let ky = y < line.end.y ? 1 : -1

        board[Point(x: x, y: y), default: 0] += 1
        while x != line.end.x {
            x += kx
            y += ky
            board[Point(x: x, y: y), default: 0] += 1
        }

    }
    
}

print(board.values.filter({$0 > 1 }).count)
