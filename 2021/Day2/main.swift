import Foundation

struct Sub {
    var x = 0
    var z = 0
    var aim = 0
}
enum Direction: String {
    case up = "up"
    case down = "down"
    case forward = "forward"

}


//var sub = Positon()
//
//for line in input.components(separatedBy: .newlines) {
//    let temp = line.split(separator: " ")
//    let dir = Direction(rawValue: String(temp.first!))
//    let dis = Int(temp.last!)!
//
//    switch dir {
//    case .up:
//        sub.z -= dis
//    case .down:
//        sub.z += dis
//    case .forward:
//        sub.x += dis
//    case .none:
//        fatalError()
//    }
//}
//
//print(sub.x * sub.z)

var sub = Sub()

for line in input.components(separatedBy: .newlines) {
    let temp = line.split(separator: " ")
    let dir = Direction(rawValue: String(temp.first!))
    let dis = Int(temp.last!)!
    
    switch dir {
    case .up:
        sub.aim -= dis
    case .down:
        sub.aim += dis
    case .forward:
        sub.x += dis
        sub.z += dis * sub.aim
    case .none:
        fatalError()
    }
}

print(sub.x * sub.z)
