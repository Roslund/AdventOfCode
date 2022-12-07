import Foundation
import Algorithms


let sample = """
bvwbjplbgvbhsrlpgdmjqwftvncz5
nppdvjthqldpwncqszvftbrmjlhg6
nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg10
zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw11
"""

let searchcount = 4 // 14 for part2
input
    .components(separatedBy: .newlines)
    .map { $0.unicodeScalars.map({String($0)}) }
    .map { line in
        line.windows(ofCount: searchcount)
            .map { Array($0) }
            .indexed()
            .compactMap { i, window in
                Array(Set(window).uniqued()).count == searchcount ? i + searchcount : nil
            }.first!
    }.print()



