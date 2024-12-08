//
//  main.swift
//  AdventOfCode
//
//  Created by Anton Roslund on 2024-12-08.
//
import Foundation


let A = input
    .components(separatedBy: .newlines)
    .map({ Int($0.split(separator: " ").first!)! })
    .sorted()

let B = input
    .components(separatedBy: .newlines)
    .map({ Int($0.split(separator: " ").last!)! })
    .sorted()

print("Part1: ",
    zip(A, B)
    .map(-)
    .map(abs)
    .reduce(0, +))

print("Part2: ", A
    .map({ a in a * B.count(where: {$0 == a}) })
    .reduce(0, +))
