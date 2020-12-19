infix operator   +: MultiplicationPrecedence

print(input.split(separator: "\n")
         .map { line in
            let expression = Expression(String(line))
            return Int(try! expression.evaluate())
        }
        .reduce(0, +)
)

