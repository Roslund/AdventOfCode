import Algorithms

print("Part 1:",
      input.chunked(by: { $0 >= $1 })
        // Dropping first since there is no
        // measurement before the first measurement.
        .dropFirst().count
)

print("Part 2:",
    input.windows(ofCount: 3)
        .map({$0.reduce(0, +)})
        .chunked(by: { $0 >= $1 })
        .dropFirst().count
)
