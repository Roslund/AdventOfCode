import Foundation

enum PuzzleData {
    case input
    case sample
}

func getPuzzle(_ file: PuzzleData, forDay: Int) -> [String] {
    let homedir = FileManager.default.homeDirectoryForCurrentUser
    let path = homedir.appendingPathComponent("Repos/AdventOfCode/2021/Day\(forDay)/\(file).txt")
    let contents = try! String(contentsOf: path)
    let lines = contents.components(separatedBy: .newlines)
    
    return lines
}
