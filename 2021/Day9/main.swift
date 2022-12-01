import Foundation
import Algorithms

let input = getPuzzle(.input
                      , forDay: 9).dropLast().map { line in
    line.compactMap({ Int(String($0)) })
}
    
let lowpoints = product(0 ..< input.rows, 0 ..< input.columns)
    .compactMap({ i,j -> Int? in
        if input[i, j]! < input.elementsDirectlyAdjacent(to: (i, j)).min()! {
        return input[i, j]
    }
    else {
        return nil
    }
})
print(lowpoints.map({ $0+1 }).reduce(0, +))
print(input)
