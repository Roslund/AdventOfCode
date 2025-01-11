extension Array where Element: RandomAccessCollection {
    var rows: Int { self.count}
    var columns: Int { self.first!.count}
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < self.count && column >= 0 && column < self[row].count
    }
    
    subscript(row: Int, column: Int) -> Element.Element? {
        get {
            guard indexIsValid(row: row, column: column) else { return nil }
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
    
    func elementsDirectlyAdjacent(to position: (Int, Int)) -> [Element.Element] {
        let (row, column) = position
        var neighbours: [Element.Element?] = []
        
        neighbours.append(self[row-1, column])
        neighbours.append(self[row, column-1])
        neighbours.append(self[row+1, column])
        neighbours.append(self[row, column+1])
        
        return neighbours.compactMap({$0})
    }
    
    func prettyprint() {
        forEach({Swift.print($0)})
    }
    
    func monospacedPrint() {
        forEach({
            $0.forEach({Swift.print($0, separator: "", terminator: "")})
            Swift.print("")
        })
    }

}


//extension Array where Element: MutableCollection {
//    private func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < self.count && column >= 0 && column < self[row].count
//    }
//    
//    subscript(row: Int, column: Int) -> Element.Element? {
//        get {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return self[row][column as! Element.Index]
//        }
//        set(newValue) {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            self[row][column as! Element.Index] = newValue!
//        }
//    }
//}

