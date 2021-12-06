//var player1 = Queue([9,2,6,3,1])
//var player2 = Queue([5,8,4,7,10])

var player1 = Queue([40,28,39,7,6,16,1,27,38,8,15,3,26,9,30,5,50,17,20,45,34,10,21,14,43])

var player2 = Queue([4,49,35,11,32,12,48,23,47,22,46,13,18,41,24,36,37,44,19,42,33,25,2,29,31])



while !player1.isEmpty && !player2.isEmpty {
    let p1 = player1.dequeue()!
    let p2 = player2.dequeue()!
    
    if p1 > p2 {
        player1.enqueue(p1)
        player1.enqueue(p2)
    } else {
        player2.enqueue(p2)
        player2.enqueue(p1)
    }
}

func score(_ seq: [Int]) -> Int {
    return seq.reversed().enumerated().reduce(0) {
        $0 + $1.element * ($1.offset + 1)
    }
}

print(score(player1.queue))
print(score(player2.queue))

