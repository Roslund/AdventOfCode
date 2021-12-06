import Foundation


let groups = input.components(separatedBy: "\n\n")


let p1 = groups
    .map { group in
        group.filter { char in
            char != "\n"
        }
    }
    .map(Set.init(_:))
    .map({$0.count})
    .reduce(0, +)

print(p1)

let p2 = groups
    .map { group in
        return group
            .split(separator: "\n")
            .map(Set.init(_:))
    }

let p3 = p2.map { group in
    group.reduce(group.first!) {
        $0.intersection($1)
    }.count
}

print(p3.reduce(0, +))
