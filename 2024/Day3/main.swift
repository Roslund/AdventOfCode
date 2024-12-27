enum Instruction {
    case mul(Int,Int)
    case doo
    case dont
}

extension Instruction {
    init(string: String) {
        switch string {
        case "do()":
            self = .doo
        case "don't()":
            self = .dont
        default:
            let a = string.dropFirst(4).dropLast(1).split(separator: ",")
            self = .mul(Int(a.first!)!, Int(a.last!)!)
        }
    }
}

input
    .matches(of: /mul\(\d\d?\d?,\d\d?\d?\)/).map({String($0.output)})
    .map(Instruction.init(string:))
    .map({if case .mul(let a, let b) = $0 {  return a * b }
        return 0 })
    .reduce(0, +)
    .print(prefix: "Part1:")


let valiedInstructions = input
    .matches(of: /(mul\(\d\d?\d?,\d\d?\d?\)|(do\(\))|don't\(\))/)
    .map({String($0.output.0)})
    .map(Instruction.init(string:))


var mulEnabled = true
var sum = 0

for insturction in valiedInstructions {
    switch (insturction, mulEnabled) {
    case (.doo, _):
        mulEnabled = true
    case (.dont, _):
        mulEnabled = false
    case (.mul(let a, let b), true):
        sum += a * b
    default:
        continue
    }
}

print("Part2:", sum)
