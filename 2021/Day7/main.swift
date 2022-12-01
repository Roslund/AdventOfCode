import Foundation
import Algorithms

let input = getPuzzle(.input, forDay: 7).first!
    .components(separatedBy: ",")
    .compactMap(Int.init)

print(input.compactMap(Int.init))

let median = input.sorted(by: <)[input.count / 2]
let mean = 459 // the fuck beh;ver jag inte round\a f;r?
print("mean", Double(input.reduce(0, +)) / Double(input.count), mean)

print(input.map({abs($0 - median)}).reduce(0, +))
print(input.map({ (0 ... abs($0 - mean)).reduce(0, +)}).reduce(0, +))

86397082
