import Foundation

let testinput = """
mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
mem[8] = 11
mem[7] = 101
mem[8] = 0
"""

var mem: [UInt: UInt] = [:]
var mask1: UInt = 0
var mask0: UInt = 0

for line in input.split(separator: "\n") {
    let instructon = line.components(separatedBy: " = ")
    let operation = instructon.first!
    let value = instructon.last!

    if operation == "mask" {
        mask1 = UInt(value.replacingOccurrences(of: "X", with: "0"), radix: 2)!
        mask0 = UInt(value.replacingOccurrences(of: "1", with: "X")
                          .replacingOccurrences(of: "0", with: "1")
                          .replacingOccurrences(of: "X", with: "0"), radix: 2)!
    } else {
        let index = UInt(operation.dropFirst(4).dropLast())!
        mem[index] = (UInt(value)! | mask1) & ~mask0
    }
}

print(mem.values.reduce(0, +))


//Part 2
mem = [:]

for line in input.split(separator: "\n") {
    let instructon = line.components(separatedBy: " = ")
    let operation = instructon.first!
    let value = instructon.last!

    if operation == "mask" {
        mask1 = UInt(value.replacingOccurrences(of: "X", with: "0"), radix: 2)!
        mask0 = UInt(value.replacingOccurrences(of: "1", with: "X")
                          .replacingOccurrences(of: "0", with: "1")
                          .replacingOccurrences(of: "X", with: "0"), radix: 2)!
    } else {
        var index = UInt(operation.dropFirst(4).dropLast())!
        index = (index | mask1) & ~mask0
        mem[index] = UInt(value)!
    }
}
