import Algorithms

enum Instruction {
    case noop
    case addx(Int)
}

extension Instruction: CustomStringConvertible {
    var description: String {
        switch self {
        case .noop:
            return "noop"
        case .addx(let value):
            return "addx \(value)"
        }
    }
}

func parseInstruction(_ input: String) -> Instruction {
    if let match = input.firstMatch(of: /-?\d+/) {
        return .addx(Int(match.output)!)
    }
    if input.firstMatch(of: /noop/) != nil {
        return .noop
    }
    
    
    fatalError("Failed to match")
//    return .noop
}

let instructions = input
    .split(separator: /\n/)
    .map({parseInstruction(String($0))})

//instructions.println()

var x = 1
var cycle = 0
var tally: [Int] = []

for i in 0..<instructions.count {
    
    switch instructions[i] {
    case .noop:
        cycle += 1
        if [20,60,100,140,180,220].contains(cycle) {
            print(x, x * cycle)
            tally.append(x * cycle)
        }
    case .addx(let value):
        cycle += 1
        if [20,60,100,140,180,220].contains(cycle) {
            print(x, x * cycle)
            tally.append(x * cycle)
        }
        cycle += 1
        if [20,60,100,140,180,220].contains(cycle) {
            print(x, x * cycle)
            tally.append(x * cycle)
        }
        x += value

    }

}

tally.reduce(0, +).print()


x = 1
cycle = 0

for i in 0..<instructions.count {
    
    switch instructions[i] {
    case .noop:
        if [x-1,x,x+1].contains(cycle % 40) {
            print("#", separator: "", terminator: "")
        } else {
            print(".", separator: "", terminator: "")
        }
        if cycle % 40 == 0 {
            print("")
        }
        cycle += 1

    case .addx(let value):
        if [x-1,x,x+1].contains(cycle % 40) {
            print("#", separator: "", terminator: "")
        } else {
            print(".", separator: "", terminator: "")
        }
        if cycle % 40 == 0 {
            print("")
        }
        cycle += 1
        if [x-1,x,x+1].contains(cycle % 40) {
            print("#", separator: "", terminator: "")
        } else {
            print(".", separator: "", terminator: "")
        }
        if cycle % 40 == 0 {
            print("")
        }

        cycle += 1

        x += value
    }

}
