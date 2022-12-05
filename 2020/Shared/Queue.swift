
// Time to prepare for next years AOC with some awesome datastructues.
// This should be based on a linked linst instad of an array, but im lazy.
struct Queue<Element> {
    var queue: Array<Element>
    
    
    var isEmpty: Bool {
        queue.isEmpty
    }
    
    public init(_ elements: [Element]) {
        self.queue = elements
    }
    
    mutating func enqueue(_ element: Element) {
        queue.append(element)
    }
    
    mutating func dequeue() -> Element? {
        queue.removeFirst()
    }
    
    mutating func pop() -> Element? {
        queue.removeLast()
    }
}


extension Queue: ExpressibleByArrayLiteral {
    @inlinable public init(arrayLiteral elements: Element...) {
        self.queue = elements
    }
}
