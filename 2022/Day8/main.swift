//parse inpt into a [[Int]]
let matrix = input.split(separator: /\n/).map { line in
    line.unicodeScalars.map { char in
        Int(String(char))!
    }
}

struct Position: Hashable {
    let row: Int
    let column: Int
}

// Part 1
var visable: [Position: Int] = [:]

for (r, row) in matrix.enumerated() {
    // forewards
    var max = -1
    for (c, height) in row.enumerated() {
        if height > max {
            max = height
            visable[Position(row: r, column: c)] = 1
        }
    }
    // backwards
    max = -1
    for (c, height) in row.reversed().enumerated() {
        if height > max {
            max = height
            visable[Position(row: r, column: row.count - 1 - c)] = 1
        }
    }
}

for (c, row) in matrix.transposed().enumerated() {
    // forewards
    var max = -1
    for (r, height) in row.enumerated() {
        if height > max {
            max = height
            visable[Position(row: r, column: c)] = 1
        }
    }
    // backwards
    max = -1
    for (r, height) in row.reversed().enumerated() {
        if height > max {
            max = height
            visable[Position(row: row.count - 1 - r, column: c)] = 1
        }
    }
}

print(visable.values.reduce(0, +))

// Print 2

var maxScore = 0
/// Size is 0 based.
let size = matrix.count - 1

// zero index and we do not want to check the edges.
for r in 1..<size {
    for c in 1..<size {
        let treeHouse = matrix[r, c]!
        var left = 0
        for cc in (0..<c).reversed() {
            left += 1
            if matrix[r, cc]! >= treeHouse {
                break
            }
        }
        var right = 0
        for cc in (c+1...size) {
            right += 1
            if matrix[r, cc]! >= treeHouse {
                break
            }
        }
        var up = 0
        for rr in (0..<r).reversed() {
            up += 1
            if matrix[rr, c]! >= treeHouse {
                break
            }
        }
        var down = 0
        for rr in (r+1...size) {
            down += 1
            if matrix[rr, c]! >= treeHouse {
                break
            }
        }
        
        let score = up * left * down * right
        if score > maxScore {
            maxScore = score
        }
    }
}

print(maxScore)
