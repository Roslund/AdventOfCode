class Monkey {
    let items: [Int]
    let operation: (Int) -> Int
    let test: (Int) -> Int
    
    init(startingItems: [Int], operation: @escaping (Int) -> Int, test: @escaping (Int) -> Int) {
        self.items = startingItems
        self.operation = operation
        self.test = test
    }
}

let Monkey0 = Monkey(
    startingItems: [79,98],
    operation: {$0*19},
    test: {$0.isMultiple(of: 23) ? 2 : 3}
)


