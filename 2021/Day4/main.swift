import Foundation

let parse1 = input.components(separatedBy: "\n\n")
let bingonumbers = parse1.first!.split(separator: ",").map({Int($0)!})
//print(bingonumbers)

let boards = parse1.dropFirst().map { board in
    return board
        .components(separatedBy: .newlines)
        .map { line in
            return line
                .split(separator: " ")
                .map({Int(String($0))!})
        }
}


func transpose(_ input: [[Int]]) -> [[Int]] {
    let columns = input.count
    let rows = input.reduce(0) { max($0, $1.count) }

    return (0 ..< rows).reduce(into: []) { result, row in
        result.append((0 ..< columns).reduce(into: []) { result, column in
            result.append(row < input[column].count ? input[column][row] : 0)
        })
    }
}

let bingoboards = boards.map({ board in
    board + transpose(board)
})


func isbingo(_ board: [[Int]], for sequence: [Int]) -> Bool {
    board.map { row in
        Set(row).isStrictSubset(of: sequence)
    }.contains(true)
}

//for i in 5...bingonumbers.count {
//    let currentSel = Array(bingonumbers[0..<i])
//
//    for board in bingoboards {
//        if isbingo(board, for: currentSel) {
//            print("Bingo")
//            let unmarked = Set(Array(board[0..<5].flatMap({ $0}))).subtracting(currentSel)
//            print(unmarked.reduce(0, +) * currentSel.last!)
//
//            exit(0)
//        }
//    }
//}

var bingoboards2 = bingoboards

for i in 5...bingonumbers.count {
    let currentSel = Array(bingonumbers[0..<i])
    var index = 0
    
    for board in bingoboards2 {
        if isbingo(board, for: currentSel) {
            if bingoboards2.count == 1 {
                print("Bingo")
                print(currentSel)
                print(board[0..<5])
                print("")
                let unmarked = Set(Array(board[0..<5].flatMap({ $0}))).subtracting(currentSel)
                print(unmarked.reduce(0, +) * currentSel.last!)
                exit(0)
                
            } else {
                bingoboards2.remove(at: index)
                index -= 1
            }
 
        }
        index += 1
    }
}
