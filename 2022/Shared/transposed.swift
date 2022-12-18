extension Sequence where
    Element: Collection,
    Element.Index == Int
{
    public func transposed(prefixWithMaxLength max: Int = .max) -> [[Element.Element]] {
        var o: [[Element.Element]] = []
        let n = Swift.min(max, self.min{ $0.count < $1.count }?.count ?? 0)
        o.reserveCapacity(n)
        for i in 0 ..< n {
            o.append(map{ $0[i] })
        }
        return o
    }
}
