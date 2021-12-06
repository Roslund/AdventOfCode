//var input = [0,12,6,13,20,1,17]
//input.reserveCapacity(30000000)
//
//for i in (input.count-1)...(30000000-2) {
//    var distance = 0
//    for j in (0...i-1).reversed() {
//        if input[i] == input[j]{
//            distance = i-j
//            break
//        }
//    }
//    input.append(distance)
//}
//
//print(input.last!)

var input = [0,12,6,13,20,1]
var dic: [Int:Int] = [:]
input.enumerated().forEach { (i,v) in dic[v] = i }

var next = 17
for i in input.count..<30000000 {
    
    let index = i-(dic[next] ?? i)
    dic[next] = i
    next = index
    
    
    if i == 30000000-2 {
        print(next)
    }
}

