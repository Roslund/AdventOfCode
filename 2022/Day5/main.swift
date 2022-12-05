import Foundation

let sample = """
move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
"""

let samplequeues: [Queue<String>] = [
    ["Z","N"],
    ["M","C","D"],
    ["P"],
]

let a = """
    [G] [R]                 [P]
    [H] [W]     [T] [P]     [H]
    [F] [T] [P] [B] [D]     [N]
[L] [T] [M] [Q] [L] [C]     [Z]
[C] [C] [N] [V] [S] [H]     [V] [G]
[G] [L] [F] [D] [M] [V] [T] [J] [H]
[M] [D] [J] [F] [F] [N] [C] [S] [F]
[Q] [R] [V] [J] [N] [R] [H] [G] [Z]
 1   2   3   4   5   6   7   8   9

"""

let realqueues: [Queue<String>] = [
    ["Q","M","G","C","L"],
    ["R","D","L","C","T","F","H","G"],
    ["V","J","F","N","M","T","W","R"],
    ["J","F","D","V","Q","P"],
    ["N","F","M","S","L","B","T"],
    ["R","N","V","H","C","D","P"],
    ["H","C","T"],
    ["G","S","J","V","Z","N","H","P"],
    ["Z","F","H","G"]
]

var queues = realqueues

input.components(separatedBy: .newlines).forEach {line in
    let split = line.split(separator: " ")
    let amount = Int(split[1])!
    let from = Int(split[3])! - 1
    let to = Int(split[5])! - 1
    
    for _ in 0 ..< amount {
        queues[to].enqueue(queues[from].pop()!)
    }
}

queues.map { ($0.queue.last!) }
    .reduce("", +)
    .print()


queues = realqueues
input.components(separatedBy: .newlines).forEach {line in
    let split = line.split(separator: " ")
    let amount = Int(split[1])!
    let from = Int(split[3])! - 1
    let to = Int(split[5])! - 1
    
    var crates: [String.Element] = []
    for _ in 0 ..< amount {
        crates += queues[from].pop()!
    }
    crates.reverse()
    crates.forEach({queues[to].enqueue(String($0))})
    
}

queues.map { ($0.queue.last!) }
    .reduce("", +)
    .print()
