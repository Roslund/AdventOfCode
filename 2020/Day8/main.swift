let instructions: [(type: String, value: Int)] = input
    .split(separator: "\n")
    .map { row in
        let components = row.split(separator: " ")
        return (String(components.first!), Int(components.last!)!)
    }


func test(input: [(type: String, value: Int)]) {
    for i in 0..<instructions.count {
        print(i)
        
//        Swap one instruction
        var instructions = input
        if instructions[i].type == "jmp" {
            instructions[i] = ("nop", instructions[i].value)
        } else if instructions[i].type == "nop" {
            instructions[i] = ("jmp", instructions[i].value)
        }
        
        var accumelator = 0
        var ipt = 0
        var visited: [Int] = []

        while true {
            if visited.contains(ipt) { break }
            else { visited.append(ipt) }
            
            // Sucessfull termination
            if ipt == instructions.count {
                print(accumelator)
            }
            
            let (instruction, value) = instructions[ipt]
            
            switch instruction {
            case "acc":
                accumelator += value
            case "jmp":
                ipt += value
                continue
            default:
                ()
            }
            
            ipt += 1

        }
    }

}

test(input: instructions)
