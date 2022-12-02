import Foundation

enum RPS: Int {
    case rock = 1
    case paper = 2
    case sissors = 3
    
    init(_ i: String) {
        if i == "A" || i == "X" {
            self = .rock
        } else if i == "B" || i == "Y" {
            self = .paper
        } else {
            self = .sissors
        }
    }
}

extension RPS {
    func beats() -> RPS {
        switch self {
        case .rock:
            return .sissors
        case .paper:
            return .rock
        case .sissors:
            return .paper
        }
    }
    func loosesTo() -> RPS {
        switch self {
        case .rock:
            return .paper
        case .paper:
            return .sissors
        case .sissors:
            return .rock
        }
    }
}

extension RPS: CustomStringConvertible {
    var description: String {
        switch self {
        case .rock:
            return "Rock"
        case .paper:
            return "Paper"
        case .sissors:
            return "Sissors"
        }
    }
    
    
}

extension RPS {
    static func score(_ a: RPS, _ b: RPS) -> Int {
        switch (a,b) {
        case (let a, let b) where a == b :
            return 3 + b.rawValue
        case (.rock,  .paper):
            return 6 + b.rawValue
        case (.rock, .sissors):
            return 0 + b.rawValue
            
        case (.paper,  .rock):
            return 0 + b.rawValue
        case (.paper, .sissors):
            return 6 + b.rawValue
            
        case (.sissors,  .paper):
            return 0 + b.rawValue
        case (.sissors, .rock):
            return 6 + b.rawValue
        default:
            fatalError("Impossible!")
        }
    }
    func part2(_ x: RPS) -> RPS {
        switch x {
        case .rock:
            return self.beats()
        case .paper:
            return self
        case .sissors:
            return self.loosesTo()
        }
    }
}


let testinput = """
A Y
B X
C Z
"""

print(input.components(separatedBy: .newlines).map({
    $0.split(separator: " ").map({RPS(String($0))})
}).map({RPS.score($0[0], $0[1])}).reduce(0, +))

print(input.components(separatedBy: .newlines).map({
    $0.split(separator: " ").map({RPS(String($0))})
}).map({RPS.score($0[0], $0[0].part2($0[1]))}).reduce(0, +))

