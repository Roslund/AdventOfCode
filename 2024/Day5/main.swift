import Foundation

let rules = irules
    .components(separatedBy: .newlines)
    .map({$0.split(separator: "|").map({Int($0)!})})

let updates = iupdates
    .components(separatedBy: .newlines)
    .map({$0.split(separator: ",").map({Int($0)!})})


func middle(_ update: [Int]) -> Int {
    update[update.count/2]
}

func validate(_ update: [Int]) -> Bool {
    rules.map({ rule in
        if let a = update.firstIndex(of: rule[0]) {
            if let b = update.firstIndex(of: rule[1]) {
                return a < b
            }
        }
        return true
    }).reduce(true, {$0 && $1})
}


updates
    .map({ validate($0) ? middle($0) : 0})
    .reduce(0, +)
    .print(prefix: "Part1")


// Part 2
func fixviolations(_ update: [Int]) -> [Int] {
    var fixedUpdate = update
    rules.forEach({ rule in
        if let a = fixedUpdate.firstIndex(of: rule[0]) {
            if let b = fixedUpdate.firstIndex(of: rule[1]) {
                if a > b {
                    fixedUpdate.insert(fixedUpdate.remove(at: b), at: a)
                }
            }
        }
    })
    return fixedUpdate
}


var invalidupdates = updates.filter({!validate($0)})

while !invalidupdates.filter({!validate($0)}).isEmpty {
    invalidupdates = invalidupdates.map(fixviolations(_:))
}
    
invalidupdates
    .map(middle(_:))
    .reduce(0, +)
    .print(prefix: "Part2")
