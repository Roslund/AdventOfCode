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
    
    func prettyprint() {
        forEach({print($0)})
    }

}
    
