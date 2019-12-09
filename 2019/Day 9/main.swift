class IntComputer {
    var memmory: [Int:Int]
    var input: [Int]
    var output: [Int] = []

    var relativeBase = 0
    var ip = 0

    init(_ program: [Int], input: [Int] = []) {
        self.memmory = Dictionary(uniqueKeysWithValues: zip(0...program.count, program))
        // we want to take elements from the end.
        self.input = input.reversed()
    }

    func decodeI(_ instruction: Int) -> (opcode: Int, pModes: [Int]) {
        let x = String(instruction).compactMap({Int(String($0))}).reversed() + [0,0,0,0]
        let opcode = Int(String(x[1]) + String(x[0]))!
        return(opcode, Array(x.dropFirst(2)))
    }

    func value(at pos: Int, for mode: Int) -> Int {
        if mode == 0 {
            return memmory[memmory[pos, default: 0], default: 0]
        } else if mode == 1 {
            return memmory[pos]!
        } else if mode == 2 {
            return memmory[relativeBase + memmory[pos, default: 0], default: 0]
        } else {
            fatalError("Unknown mode")
        }
    }

    func pos(_ ipp: Int, mode: Int) -> Int {
        if mode == 2 {
            return relativeBase + memmory[ipp]!
        }
        return memmory[ipp]!
    }

    enum Status {
        case Done
        case WaitingForInput
    }
    func run() -> Status {

        while true {
            let (opcode, pModes) = decodeI(memmory[ip]!)
            switch opcode {
            // ADD
            case 1:
                memmory[pos(ip+3, mode: pModes[2])] = value(at: ip+1, for: pModes[0]) + value(at: ip+2, for: pModes[1])
                ip += 4
            // MUL
            case 2:
                memmory[pos(ip+3, mode: pModes[2])] = value(at: ip+1, for: pModes[0]) * value(at: ip+2, for: pModes[1])
                ip += 4
            // Input
            case 3:
                guard let param = input.popLast() else {
                    return .WaitingForInput
                }

                memmory[pos(ip+1, mode: pModes[0])] = param
                ip += 2
            // Output
            case 4:
                output.append(value(at: ip+1, for: pModes[0]))
                ip += 2
            // jump-if-true
            case 5:
                if value(at: ip+1, for: pModes[0]) != 0 {
                    ip = value(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // jump-if-false
            case 6:
                if value(at: ip+1, for: pModes[0]) == 0 {
                    ip = value(at: ip+2, for: pModes[1])
                } else {
                    ip += 3
                }
            // Less than
            case 7:
                if value(at: ip+1, for: pModes[0]) < value(at: ip+2, for: pModes[1]) {
                    memmory[pos(ip+3, mode: pModes[2])] = 1
                } else {
                    memmory[pos(ip+3, mode: pModes[2])] = 0
                }
                ip += 4
            // equals
            case 8:
                if value(at: ip+1, for: pModes[0]) == value(at: ip+2, for: pModes[1]) {
                    memmory[pos(ip+3, mode: pModes[2])] = 1
                } else {
                    memmory[pos(ip+3, mode: pModes[2])] = 0
                }
                ip += 4
            case 9:
                relativeBase += value(at: ip+1, for: pModes[0])
                ip += 2
            case 99:
                return .Done
            default:
                fatalError()
            }
        }
    }

}

let comp = IntComputer(input, input: [2])
print(comp.run())
print(comp.output)
