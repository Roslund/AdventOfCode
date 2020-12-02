let part1 = input.flatMap { a in
    return input.map { b in
        return (a,b)
    }
}.filter { (a,b) in
    a+b==2020
}.first!



let permutations = input.flatMap { a in
    return input.flatMap { b in
        return input.map { c in
            return (a,b,c)
        }
    }
}

let answer = permutations.filter { (a,b,c) in
    a+b+c==2020
}.first!

print(answer.0*answer.1*answer.2)
