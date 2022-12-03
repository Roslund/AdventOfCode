extension String {
    init<S: Sequence>(unicodeScalars ucs: S)
        where S.Iterator.Element == UnicodeScalar
    {
        var s = ""
        s.unicodeScalars.append(contentsOf: ucs)
        self = s
    }
}

import Foundation

let a = input
    .components(separatedBy: .newlines)
    .map { $0.components(separatedBy: " | ")
            .map { $0
                .split(separator: " ")
                //.map { String($0) }
                .map { String($0.sorted()) }
            }
    }

let count = a.map { $0[1] }
    .flatMap({$0})
    .filter({ [2,3,4,7].contains($0.count) })
    .count

print(count)


func solveSegment(given a: [String]) -> [String: Int] {
    let b = a.map({ Set($0.unicodeScalars)})
    var dict: [Int:Set<UnicodeScalar>] = [:]
    dict[1] = b.first { $0.count == 2}
    dict[4] = b.first { $0.count == 4}
    dict[7] = b.first { $0.count == 3}
    dict[8] = b.first { $0.count == 7}

    dict[9] = b.first { $0.count == 6 && $0.isSuperset(of: dict[4]!) && $0.isSuperset(of: dict[7]!)}
    dict[0] = b.first { $0.count == 6 && !$0.elementsEqual(dict[9]!) && $0.isSuperset(of: dict[1]!)}
    dict[6] = b.first { $0.count == 6 && !$0.elementsEqual(dict[0]!) && !$0.elementsEqual(dict[9]!)}

    dict[3] = b.first { $0.count == 5 && $0.isSuperset(of: dict[7]!) }
    dict[5] = b.first { $0.count == 5 && $0.isSuperset(of: dict[4]!.subtracting(dict[1]!)) }
    dict[2] = b.first { $0.count == 5 && !$0.elementsEqual(dict[3]!) && !$0.elementsEqual(dict[5]!)}


    let dict2 = dict
        .mapValues { String(unicodeScalars: $0) }
        .mapValues { String($0.sorted()) }
        .reduce(into: [:]) { $0[$1.value] = $1.key }
    
    return dict2
}

let c = a.map { (aa: [[String]]) -> [String] in
    let dic = solveSegment(given: aa[0])
    return aa[1].map { String(dic[$0]!) }
}
    .map { Int($0.joined(separator: ""))! }
    .reduce(0, +)
    
print(c)

// too low: 483836
