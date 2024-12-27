import Foundation

let srules = """
47|53
97|13
97|61
97|47
75|29
61|13
75|53
29|13
97|29
53|29
61|53
97|53
61|29
47|13
75|47
97|75
47|61
75|61
47|29
75|13
53|13
"""

let supdates = """
75,47,61,53,29
97,61,53,29,13
75,29,13
75,97,47,61,53
61,13,29
97,13,75,29,47
"""

//parsning

let rules = srules
    .components(separatedBy: .newlines)
    .map({$0.split(separator: "|").map({Int($0)!})})

rules.println()

let updates = supdates
    .components(separatedBy: .newlines)
    .map({$0.split(separator: ",").map({Int($0)!})})

updates.println()

//Solving
