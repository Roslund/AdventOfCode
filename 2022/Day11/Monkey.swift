class Monkey {
    var activity = 0
    var items: [Int]
    let operation: (Int) -> Int
    let test: (Int) -> Int
    let divisor: Int
    
    init(startingItems: [Int], operation: @escaping (Int) -> Int, test: @escaping (Int) -> Int, divisor: Int) {
        self.items = startingItems
        self.operation = operation
        self.test = test
        self.divisor = divisor
    }
}

extension Monkey: CustomStringConvertible {
    var description: String {
        items.description
    }
    

}

extension Monkey {
    convenience init(_ input: String) {
        let startingItems = String(input
            .split(separator: /\n/)
            .dropFirst()
            .first!
            .trimmingPrefix("  Starting items: "))
            .split(separator: /,\s/)
            .map({Int($0)!})
        
        let op = input
            .firstMatch(of: /old\s(?<op>.)\s(?<rhs>.*)/)!.output
        var operation: (Int) -> Int
        
        if op.op == "*" {
            if op.rhs == "old" {
                operation = {$0*$0}
            }else {
                operation = {$0*Int(op.rhs)!}
            }
        } else {
            if op.rhs == "old" {
                operation = {$0+$0}
            }else {
                operation = {$0+Int(op.rhs)!}
            }
        }
        

        let divisor = Int(input
            .firstMatch(of: /Test.*\s(?<divisor>\d+)/)!
            .output.divisor)!
        let ifTrue = Int(input
            .firstMatch(of: /true.*\s(?<ifTrue>\d+)/)!
            .output.ifTrue)!
        let ifFalse = Int(input
            .firstMatch(of: /false.*\s(?<ifFalse>\d+)/)!
            .output.ifFalse)!
        
        self.init(
            startingItems: startingItems,
            operation: operation,
            test: {$0.isMultiple(of: divisor) ? ifTrue : ifFalse},
            divisor: divisor
        )
    }
}
