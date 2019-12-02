var program = input
program[1] = 12
program[2] = 2

for i in stride(from: 0, to: program.count, by: 4) {
    if program[i] == 99 {
        break
    }

    switch program[i] {
    case 1:
        program[program[i+3]] = program[program[i+1]] + program[program[i+2]]
    case 2:
        program[program[i+3]] = program[program[i+1]] * program[program[i+2]]
    default:
        fatalError()
    }
}

print(program[0])

let inputs = (0...99).flatMap { a in
    (0...99).map {b in
        (a,b)
    }
}

for (a, b) in inputs {
    var program = input
    program[1] = a
    program[2] = b

    for i in stride(from: 0, to: program.count, by: 4) {
        if program[i] == 99 {
            break
        }

        switch program[i] {
        case 1:
            program[program[i+3]] = program[program[i+1]] + program[program[i+2]]
        case 2:
            program[program[i+3]] = program[program[i+1]] * program[program[i+2]]
        default:
            fatalError()
        }
    }

    if program[0] == 19690720 {
        print(100*a+b)
        break
    }
}


