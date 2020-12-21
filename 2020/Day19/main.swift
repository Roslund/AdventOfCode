import Foundation

//let input1 = """
//2: 4 4 | 5 5
//3: 4 5 | 5 4
//4: "a"
//0: 4 1 5
//1: 2 3 | 3 2
//5: "b"
//"""
//
//let input2 = """
//ababbb
//bababa
//abbbab
//aaabbb
//aaaabbb
//"""

let rules = input1.split(separator: "\n").sorted { ( a,b) in
    Int(a.split(separator: ":").first!)! <
    Int(b.split(separator: ":").first!)!
}

func num(_ input: String) -> String {
    let numbers = input.split(separator: " ")
    let strs = numbers
        .map({ a in
                req(String(rules[Int(a)!]))
            
        })
    return strs.reduce("") { $0+$1 }
}

func req(_ input: String) -> String {
    let part2 = input.components(separatedBy: ": ").last!
    
    if part2.first == "\"" {
        return String(part2.dropFirst().first!)
    }
    
    if part2.contains("|") {
        let split = part2.components(separatedBy: " | ")
        return "(\(num(split[0]))|\(num(split[1])))"
    }
    
    return num(part2)
}

let regexstr = req(String(rules.first!))
print(regexstr)




