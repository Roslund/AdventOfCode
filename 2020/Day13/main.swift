let testinput = """
939
7,13,x,x,59,x,31,19
"""

let input = """
1015292
19,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,x,x,x,743,x,x,x,x,x,x,x,x,x,x,x,x,13,17,x,x,x,x,x,x,x,x,x,x,x,x,x,x,29,x,643,x,x,x,x,x,37,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,23
"""
//
//let time = Int(input.split(separator: "\n").first!)!
//let busses = input.split(separator: "\n").last!
//    .split(separator: ",")
//    .compactMap({Int($0)})
//
//
//print(busses
//        .map({($0, $0 - (time % $0))})
//        .min { $0.1 < $1.1 }
//        .map({ $0.0 * $0.1})!)


let busses: [(offset: Int, id: Int)] = input.split(separator: "\n").last!
    .split(separator: ",")
    .enumerated()
    .filter({$0.element != "x"})
    .map({($0.offset, Int($0.element)!)})


let max = busses.max(by: { $0.id < $1.id })!
let increment = max.id
var time = max.id - max.offset

while true {
    let temp = busses.map { buss in
        (buss.id - (time % buss.id)) % buss.id == buss.offset
    }
    let done = temp.reduce(true, { (a,b) in a && b })
    if done {
        print("You are awesome", time)
        break
    } else {
        time += increment
    }
}
