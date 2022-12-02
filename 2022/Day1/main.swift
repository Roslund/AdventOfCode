//
//  main.swift
//  AdventOfCode2022
//
//  Created by Anton Roslund on 2022-12-01.
//

import Algorithms
import Foundation

print("Hello, World!")

let a = input.components(separatedBy: "\n\n").map({
    $0.description.components(separatedBy: .newlines).map({Int($0)!}).reduce(0, +)
}).sorted()
print(a)

print(69208 + 69434 + 69795)
