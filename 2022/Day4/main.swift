import Foundation

let parsedInput = input.components(separatedBy: .newlines)
    .map { line in
        line.split(separator: ",")
            .map { range in
                let range = range
                    .split(separator: "-")
                    .map({Int($0)!})
                return range[0]...range[1]
            }
    }.map { ($0[0], $0[1]) }


parsedInput.map { (a,b) in
    Set(a).isSuperset(of: Set(b)) ||
    Set(b).isSuperset(of: Set(a)) ? 1 : 0
}
.reduce(0, +)
.print(prefix: "Part1: ")

parsedInput.map { (a,b) in
    a.overlaps(b) ? 1 : 0
}
.reduce(0, +)
.print(prefix: "Part2: ")





