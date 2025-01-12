import Algorithms

var disk: [Int: Int] = [:]


/// For pretty printing
func printdic(_ dic: [Int:Int]) {
    for i in 0 ... dic.keys.max()! {
        print(dic[i] ?? ".", terminator: "")
    }
    print("")
}

// Pasing the input to a dictionary
let diskmap = input.map({Int(String($0))!})
var index = 0

for (fileid, chunk) in diskmap.chunks(ofCount: 2).enumerated() {
    let emptypace = chunk.first!
    let filesize = chunk.last!

    index += emptypace
    
    for _ in 0 ..< filesize {
        disk[index] = fileid
        index += 1
    }

}

/// For solving part 1
func fragment(_ dic: [Int:Int]) -> [Int:Int] {
    var disk = dic
    var head = 0
    var tail = disk.keys.max()!
    
    while true {
        while disk[head] != nil {
            head += 1
        }
        if head > tail {
            break
        }
        
        disk[head] = disk[tail]
        disk[tail] = nil
        
        while disk[tail] == nil {
            tail -= 1
        }
    }
    return disk
}

///Calculate checksum
func calculateChecksum(_ dic: [Int:Int]) -> Int {
    var checksum = 0
    for i in 0 ... dic.keys.max()! {
        if let id = dic[i] {
            checksum += id * i
        }
    }
    return checksum
}


calculateChecksum(fragment(disk)).print()



func firstHoleOf(dic: [Int:Int], size: Int, before: Int) -> Int? {
    var head = 0
    var start = 0
    var csize = 0
    
    while head < before {
        if dic[head] == nil {
            csize += 1
            if csize == size {
                return start
            }
        } else {
            start = head+1
            csize = 0
        }
        
        head += 1
        
    }
    return nil
}

/// For solving part 2
func compress(_ dic: [Int:Int]) -> [Int:Int] {
    var tail = dic.keys.max()!
    var disk = dic
    
    while tail > 0 {
        print(tail)

        if let id = disk[tail] {
            var size = 1
            
            while disk[tail-size] == id {
                size += 1
            }
            
            // find fitting hole and move
            if var start = firstHoleOf(dic: disk, size: size, before: tail) {
                for i in 0..<size {
                    disk[start] = disk[tail - i]
                    disk[tail - i] = nil
                    start += 1
                }
            }
            tail -= size
        } else {
            tail -= 1
        }
    }
    
    return disk
}

calculateChecksum(compress(disk)).print()
