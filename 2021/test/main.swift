//
//  main.swift
//  AdventOfCode2021
//
//  Created by Anton Roslund on 2022-02-22.
//

import Foundation


func isPallindrom(_ x: Int) -> Bool {
    let b22 = String(x, radix: 22)
    let b33 = String(x, radix: 33)
    
    if b22.reversed().reversed() == b22.reversed() && b33.reversed().reversed() == b33.reversed() {
        print(x, b22, b33)
        return true 
    }
    return false
}



var i = 2345665432

while i > 1 {
    if isPallindrom(i) {
        exit(0)
    }
    i = i-1
}

