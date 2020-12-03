var part1 = 0
var part2 = 0

for line in input.split(separator: "\n") {
    let components = line.split(separator: " ")
    let min = Int(components[0])!
    let max = Int(components[1])!
    let char = components[2].first!
    let password = components[3]
    
    //part 1
    let occurences = password.filter({ $0 == char }).count
    if occurences >= min && occurences <= max {
        part1 += 1
    }
    
    //part 2
    if password[password.index(password.startIndex, offsetBy: min-1)] == char  && password[password.index(password.startIndex, offsetBy: max-1)] != char {
        part2 += 1
    }
    if password[password.index(password.startIndex, offsetBy: min-1)] != char  && password[password.index(password.startIndex, offsetBy: max-1)] == char {
        part2 += 1
    }
}

print(part1)
print(part2)



