extension Collection {
    func permutations() -> [[Iterator.Element]] {
        var scratch = Array(self) // This is a scratch space for Heap's algorithm
        var result: [[Iterator.Element]] = [] // This will accumulate our result

        // Heap's algorithm
        func heap(_ n: Int) {
            if n == 1 {
                result.append(scratch)
                return
            }

            for i in 0..<n-1 {
                heap(n-1)
                let j = (n%2 == 1) ? 0 : i
                scratch.swapAt(j, n-1)
            }
            heap(n-1)
        }

        // Let's get started
        heap(scratch.count)

        // And return the result we built up
        return result
    }
}
