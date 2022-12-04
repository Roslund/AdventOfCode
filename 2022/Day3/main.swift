import Foundation
import Algorithms

extension String {
    func splitInHalf() -> [String] {
        let middle = self.index(self.startIndex, offsetBy: self.count/2)
        return [
            String(self[..<middle]),
            String(self[middle...])
        ]
    }
}

func prioritize(item: String) -> Int {
    let priorityIndex = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    return priorityIndex.firstIndex(of: item)! + 1
}

func commonItems(given rucksacks: [String] ) -> String {
    let setOfComonItems = rucksacks
        .reduce(Set(rucksacks.first!)) { (common, next) in
            common.intersection(Set(next))
        }
    return String(setOfComonItems)
}


let rucksacks = input.components(separatedBy: .newlines)

rucksacks
    .map { $0.splitInHalf() }
    .map(commonItems(given:))
    .map(prioritize(item:))
    .reduce(0, +)
    .print(prefix: "Part1:")

rucksacks
    .chunks(ofCount: 3)
    .map { $0.map({String($0)}) }
    .map(commonItems(given:))
    .map(prioritize(item:))
    .reduce(0, +)
    .print(prefix: "Part2:")
