struct Coord: Equatable, Hashable {
    let x,y,z : Int
    
    func neigbhours() -> [Coord] {
        return (x-1...x+1).flatMap { x in
            (y-1...y+1).flatMap { y in
                (z-1...z+1).compactMap { z in
                    guard Coord(x: x, y: y, z: z) != self else { return nil }
                    return Coord(x: x, y: y, z: z)
                }
            }
        }
    }
}

struct HCoord: Equatable, Hashable {
    let x,y,z,w : Int
    
    func neigbhours() -> [HCoord] {
        return (x-1...x+1).flatMap { x in
            (y-1...y+1).flatMap { y in
                (z-1...z+1).flatMap { z in
                    (w-1...w+1).compactMap { w in
                        guard HCoord(x: x, y: y, z: z, w: w) != self else { return nil }
                        return HCoord(x: x, y: y, z: z, w: w)
                    }
                }
            }
        }
    }
}


let input = """
#.#.#.##
.####..#
#####.#.
#####..#
#....###
###...##
...#.#.#
#.##..##
"""

//var pocketdim: Set<Coord> = Set()
//
//input.split(separator: "\n").enumerated().forEach { (y,row) in
//    row.enumerated().forEach { (x,char) in
//        if char == "#" {
//            pocketdim.insert(Coord(x: x, y: y, z: 0))
//        }
//    }
//}
//
//for _ in 0..<6 {
//    var newpocketdim: Set<Coord> = Set()
//    print(pocketdim.count)
//    for coord in Set(pocketdim.flatMap({$0.neigbhours()})) {
//        if pocketdim.contains(coord) {
//            if (2...3).contains(pocketdim.intersection(coord.neigbhours()).count) {
//                newpocketdim.insert(coord)
//            }
//        } else {
//            if pocketdim.intersection(coord.neigbhours()).count == 3 {
//                newpocketdim.insert(coord)
//            }
//        }
//    }
//    pocketdim = newpocketdim
//}
//
//print(pocketdim.count)


print(HCoord(x: 0, y: 0, z: 0, w: 0).neigbhours().count)

var hpocketdim: Set<HCoord> = Set()

input.split(separator: "\n").enumerated().forEach { (y,row) in
    row.enumerated().forEach { (x,char) in
        if char == "#" {
            hpocketdim.insert(HCoord(x: x, y: y, z: 0, w: 0))
        }
    }
}

for _ in 0..<6 {
    var newpocketdim: Set<HCoord> = Set()
    print(hpocketdim.count)
    for coord in Set(hpocketdim.flatMap({$0.neigbhours()})) {
        if hpocketdim.contains(coord) {
            if (2...3).contains(hpocketdim.intersection(coord.neigbhours()).count) {
                newpocketdim.insert(coord)
            }
        } else {
            if hpocketdim.intersection(coord.neigbhours()).count == 3 {
                newpocketdim.insert(coord)
            }
        }
    }
    hpocketdim = newpocketdim
}

print(hpocketdim.count)
