class IntComputer {
    var program: [Int]
    var input: [Int]
    var output: [Int] = []
    var ip = 0

    init(_ program: [Int], input: [Int] = []) {
        self.program = program
        // we want to take elements from the end.
        self.input = input.reversed()
    }

    func decodeI(_ instruction: Int) -> (opcode: Int, pModes: [Int]) {
        let x = String(instruction).compactMap({Int(String($0))}).reversed() + [0,0,0,0]
        let opcode = Int(String(x[1]) + String(x[0]))!
        return(opcode, Array(x.dropFirst(2)))
    }

    func getValue(at pos: Int, for mode: Int) -> Int {
        if mode == 0 {
            return program[program[pos]]
        } else {
            return program[pos]
        }
    }

    func run() -> IntComputer {

        while true {
            let (opcode, pModes) = decodeI(program[ip])
            switch opcode {
            // ADD
            case 1:
                program[program[ip+3]] = getValue(at: ip+1, for: pModes[0]) + getValue(at: ip+2, for: pModes[1])
                ip += 4
            // MUL
            case 2:
                program[program[ip+3]] = getValue(at: ip+1, for: pModes[0]) * getValue(at: ip+2, for: pModes[1])
                ip += 4
            // Input
            case 3:
                program[program[ip+1]] = input.popLast()!
                ip += 2
            // Output
            case 4:
                output.append(getValue(at: ip+1, for: pModes[0]))
                ip += 2
            // jump-if-true
            case 5:
                if getValue(at: ip+1, for: pModes[0]) != 0 {
                    ip = getValue(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // jump-if-false
            case 6:
                if getValue(at: ip+1, for: pModes[0]) == 0 {
                    ip = getValue(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // Less than
            case 7:
                if getValue(at: ip+1, for: pModes[0]) < getValue(at: ip+2, for: pModes[1]) {
                    program[program[ip+3]] = 1
                } else {
                    program[program[ip+3]] = 0
                }
                ip += 4
            // equals
            case 8:
                if getValue(at: ip+1, for: pModes[0]) == getValue(at: ip+2, for: pModes[1]) {
                    program[program[ip+3]] = 1
                } else {
                    program[program[ip+3]] = 0
                }
                ip += 4
            case 99:
                return self
            default:
                fatalError()
            }
        }
    }

    func run2() -> IntComputer? {

        while true {
            let (opcode, pModes) = decodeI(program[ip])
            switch opcode {
            // ADD
            case 1:
                program[program[ip+3]] = getValue(at: ip+1, for: pModes[0]) + getValue(at: ip+2, for: pModes[1])
                ip += 4
            // MUL
            case 2:
                program[program[ip+3]] = getValue(at: ip+1, for: pModes[0]) * getValue(at: ip+2, for: pModes[1])
                ip += 4
            // Input
            case 3:
                guard let param = input.popLast() else {
                    return self
                }

                program[program[ip+1]] = param
                ip += 2
            // Output
            case 4:
                output.append(getValue(at: ip+1, for: pModes[0]))
                ip += 2
            // jump-if-true
            case 5:
                if getValue(at: ip+1, for: pModes[0]) != 0 {
                    ip = getValue(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // jump-if-false
            case 6:
                if getValue(at: ip+1, for: pModes[0]) == 0 {
                    ip = getValue(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // Less than
            case 7:
                if getValue(at: ip+1, for: pModes[0]) < getValue(at: ip+2, for: pModes[1]) {
                    program[program[ip+3]] = 1
                } else {
                    program[program[ip+3]] = 0
                }
                ip += 4
            // equals
            case 8:
                if getValue(at: ip+1, for: pModes[0]) == getValue(at: ip+2, for: pModes[1]) {
                    program[program[ip+3]] = 1
                } else {
                    program[program[ip+3]] = 0
                }
                ip += 4
            case 99:
                return nil
            default:
                fatalError()
            }
        }
    }

}

// Part 1
var max = 0
for permutation in [0,1,2,3,4].permutations() {
    let a = IntComputer(input, input: [permutation[0],0]).run().output.first!
    let b = IntComputer(input, input: [permutation[1],a]).run().output.first!
    let c = IntComputer(input, input: [permutation[2],b]).run().output.first!
    let d = IntComputer(input, input: [permutation[3],c]).run().output.first!
    let e = IntComputer(input, input: [permutation[4],d]).run().output.first!
    if e > max {
        max = e
    }
}
print(max)

// Part 2


max = 0
for permutation in [5,6,7,8,9].permutations() {
    let compA = IntComputer(input, input: [permutation[0]]).run2()
    let compB = IntComputer(input, input: [permutation[1]]).run2()
    let compC = IntComputer(input, input: [permutation[2]]).run2()
    let compD = IntComputer(input, input: [permutation[3]]).run2()
    let compE = IntComputer(input, input: [permutation[4]]).run2()

    var output = 0
    while compA != nil {
        compA?.input = [output]
        compA?.run2()
        compB?.input = [(compA?.output.popLast())!]
        compB?.run2()
        compC?.input = [(compB?.output.popLast())!]
        compC?.run2()
        compD?.input = [(compC?.output.popLast())!]
        compD?.run2()
        compE?.input = [(compD?.output.popLast())!]
        if compE?.run2() == nil {
            output = compE!.output.popLast()!
            break
        }
        output = compE!.output.popLast()!
    }
    if output > max {
        max = output
    }
}

print(max)
