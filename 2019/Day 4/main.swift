let input = 108457 ... 562041

let twosame: (Int) -> Bool = { num in
    let s = String(num)
    for (s1, s2) in zip(s.dropLast(), s.dropFirst()) {
        if s1 == s2 {
            return true
        }
    }
    return false
}

let increacing: (Int) -> Bool = { num in
    let s = String(num)
    for (s1, s2) in zip(s.dropLast(), s.dropFirst()) {
        if Int(String(s1))! > Int(String(s2))! {
            return false
        }
    }
    return true
}

print("Part 1:", input.filter(twosame).filter(increacing).count)

let twosame2: (Int) -> Bool = { num in
    var didgits = String(num).map {Int(String($0))!}
    didgits = [-1] + didgits + [-1]

    for i in 1...5 {
        if  didgits[i-1] != didgits[i]   &&
            didgits[i]   == didgits[i+1] &&
            didgits[i+1] != didgits[i+2] {
            return true
        }
    }
    return false
}

print("Part 2:", input.filter(increacing).filter(twosame2).count)
