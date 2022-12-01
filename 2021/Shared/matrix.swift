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
        forEach({print($0)})
    }

}
    
