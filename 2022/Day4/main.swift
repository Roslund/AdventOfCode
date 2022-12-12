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

//let parsedInput2 = input.split(separator: /\n/)
//    .map { line in
//        let match = String(line).firstMatch(of:
//    /\d+-\d+,(?<c>\d+)-(?<d>\d+)/)!
////                                                /(?<a>\d+)-(?<b>\d+),(?<c>\d+)-(?<d>\d+)/)!
//        print(match.1)
//        //return (match.a...match.b, match.c...match.d)
//    }


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





