extension Array where Element: RandomAccessCollection {
    var rows: Int { self.count}
    var columns: Int { self.first!.count}
    
    subscript(row: Int, column: Int) -> Element.Element? {
        get {
            guard row >= 0 && row < self.count else { return nil }
            guard column >= 0 && column < self[row].count else { return nil }
            
            return self[row][column as! Element.Index]
        }
    }
    
    func elementsAdjacent(to position: (Int, Int)) -> [Element.Element] {
        let (row, column) = position
        var neighbours: [Element.Element] = []
        
        for i in row-1 ... row+1 {
            for j in column-1 ... column+1 {
                // Self should not be includes as a neighbour
                if i == row && j == column {
                    continue
                }
                
                if let neighbour = self[i, j] {
                    neighbours.append(neighbour)
                }
            }
        }
        return neighbours
    }
}

enum Cell: String {
    case seat = "L"
    case occupied = "#"
    case floor = "."
}
extension Cell: CustomStringConvertible {
    var description: String {
        self.rawValue
    }
}

func ruleOfSeating(cell: Cell, neighbours: [Cell]) -> Cell {
    let occupied = neighbours.filter({$0 == .occupied}).count
    
    switch (cell, occupied) {
    case (.seat, 0):
        return .occupied
    case (.occupied, 5...):
        return .seat
    default:
        return cell
    }
}

typealias State = [[Cell]]

extension State {
    func next() -> State {
        self.enumerated().map { (row, columns) in
            return columns.enumerated().map { (column, cell) in
                return ruleOfSeating(cell: cell, neighbours: self.elementsInLineOfSight(of: (row,column)))
            }
        }
    }
    
    func elementsInLineOfSight(of position: (Int, Int)) -> [Element.Element] {
        let (row, column) = position
        var insight: [Element.Element?] = []
        
        // Left
        insight.append(self[row][..<column]
            .reversed()
            .filter({$0 != .floor})
            .first)
        //right
        insight.append(self[row][(column+1)...]
            .filter({$0 != .floor})
            .first)
        
        // top
        for i in (0..<row).reversed() {
            if let cell = self[i, column] {
                if cell != .floor {
                    insight.append(cell)
                    break
                }
            }
        }
        
        // down
        for i in (row+1)..<rows {
            if let cell = self[i, column] {
                if cell != .floor {
                    insight.append(cell)
                    break
                }
            }
        }
        
        //topleft
        var i = 1
        while true {
            guard let cell = self[row+i, column-i] else { break }
                
            if cell != .floor {
                insight.append(cell)
                break
            }
            i += 1
        }
        
        //topright
        i = 1
        while true {
            guard let cell = self[row+i, column+i] else { break }
                
            if cell != .floor {
                insight.append(cell)
                break
            }
            i += 1
        }
        
        //bottomleft
        i = 1
        while true {
            guard let cell = self[row-i, column-i] else { break }
                
            if cell != .floor {
                insight.append(cell)
                break
            }
            i += 1
        }
        //bottomright
        i = 1
        while true {
            guard let cell = self[row-i, column+i] else { break }
                
            if cell != .floor {
                insight.append(cell)
                break
            }
            i += 1
        }
        
        return insight.compactMap({$0})
    }
}



let grid: State = input
    .split(separator: "\n")
    .map { row in
        row.map { char in
            Cell(rawValue: String(char))!
        }
    }

var mutableState = grid

while true {
    let next = mutableState.next()
    if mutableState != next {
        mutableState = next
    } else {
        print(mutableState
                .flatMap({$0.map({$0})})
                .filter({$0 == .occupied})
                .count
        )
        break
    }
}
