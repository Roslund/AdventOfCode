import Foundation
import Algorithms

let reports = sample
    .components(separatedBy: .newlines)
    .map({ line in line
            .split(separator: " ")
            .map({Int($0)!})
    })


func isIncreasing(a: Int, b: Int) -> Bool {
    (b - a) >= 1 && (b - a) <= 3
}

func isDecreasing(a: Int, b: Int) -> Bool {
    (a - b) >= 1 && (a - b) <= 3
}

func isSafe(floor: [Int]) -> Bool {
    let levelsIncreasing = floor
        .windows(ofCount: 2)
        .map({ isIncreasing(a: $0.first!, b: $0.last!) })
        .reduce(true, {$0 && $1 == true})
    
    let levelsDecreasing = floor
        .windows(ofCount: 2)
        .map({ isDecreasing(a: $0.first!, b: $0.last!) })
        .reduce(true, {$0 && $1 == true})

    return(levelsIncreasing || levelsDecreasing)
}

reports
    .map(isSafe(floor:))
    .count(where: {$0 == true})
    .print(prefix: "Part1: ")


extension Array {
    func permutationsWithOneMissin() -> [Self] {
        enumerated().map({ n, _ in self.filter({})})
        self[0..<3] + self[3+1..<count]
    }
}
	
