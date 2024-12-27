// Shamelessly stolen. This should defenelty be part of the standard library.
// https://www.swiftbysundell.com/articles/the-power-of-key-paths-in-swift/
//
extension Sequence {
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted { a, b in
            return a[keyPath: keyPath] < b[keyPath: keyPath]
        }
    }
}
