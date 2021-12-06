extension ArraySlice where Element: Equatable{
    func permutations() -> [(Element, Element)] {
        self.flatMap { a in
            // Incluedes it self int the permutation... not optimal
            return self.drop(while: {$0==a}).map { b  in
                return (a,b)
            }
        }
    }
}

var invalidNumber = 0

for i in 25..<input.count {
    let target = input[i]
    let check = input[i-25..<i]
    let prevsums = check.permutations().map({$0+$1}).sorted()
    
    if !prevsums.contains(target){
        invalidNumber = target
        break
    }
}

print("Part 1: \(invalidNumber)")

var iterator = 2
while true {
    for i in 0..<input.count-iterator {
        let subsequence = input[i..<i+iterator]
        if subsequence.reduce(0, +) == invalidNumber {
            print(subsequence.min()!+subsequence.max()!)
        }
    }
    
    iterator += 1
}
