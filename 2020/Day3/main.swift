
var forest: [[Bool]] = []

for line in input.split(separator: "\n") {
    var trees: [Bool] = []
    for char in line {
        trees.append(char == "#" ? true : false)
    }
    forest.append(trees)
}


let slopes = [
    (1,1),
    (3,1),
    (5,1),
    (7,1),
    (1,2)
]

var scollisions: [Int] = []

for (dx,dy) in slopes {
    var collisions = 0
    var x = 0
    var y = 0


    while y < forest.count {
        if forest[y][x] {
            collisions += 1
        }
        
        y += dy
        x = (x+dx) % forest.first!.count
    }

    print(collisions)
    scollisions.append(collisions)
}

print(scollisions.reduce(1, *))
