//
//  String+toCharMatrix.swift
//  AdventOfCode
//
//  Created by Anton Roslund on 2024-12-27.
//
import Foundation

extension String {
    func toMatrix() -> [[Character]]{
        self.components(separatedBy: .newlines).map({$0.map({$0})})
    }
}
