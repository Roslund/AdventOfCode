
let equations = input
    .replacingOccurrences(of: ":", with: "")
    .components(separatedBy: .newlines)
    .map({
        $0.split(separator: " ").map({Int($0)!})
    })


func possible(_ input: [Int]) -> Int {
    let result = input.first!
    let operands = input.dropFirst()
    
    if recursive(result, operand) {
        return result
    }
    else {
        return 0
    }
}

func recursive<C: Collection<Int>>(_ target: Int, _ operands: C, current: Int = 0) -> Bool {
    if current == target {
        return true
    }
    
    if operands.isEmpty {
        return false
    }
    
    if recursive(target, operands.dropFirst(), current: current + operands.first!) {
        return true
    }
    
    if current != 0 && recursive(target, operands.dropFirst(), current: current * operands.first!) {
        return true
    }
    
    return false
}


equations.map(possible(_:)).reduce(0, +).print(prefix: "part 1:")
