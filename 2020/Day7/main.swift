import Foundation

var bagrules: [String: [(cuantity: Int, bag: String)]] = [:]

for line in input.split(separator: "\n") {
    let linekeyvalue = line.dropLast().components(separatedBy: " contain ")
    let key = linekeyvalue.first!
    
    for directions in linekeyvalue.last!.components(separatedBy: ", ") {
        if directions != "no other bags" {
        let quantity = Int(String(directions.first!))!
        var bagtype = directions.dropFirst(2)
        if quantity == 1 {
            bagtype.append("s")
        }
        
        bagrules[key] = bagrules[key, default: []] + [(quantity,String(bagtype))]
        }
    }
}

var count = 0

func containsCount(_ key: String) -> Int {
    if let keys = bagrules[key] {
        return keys.reduce(0) { (prev, rule) in
            prev + rule.cuantity + rule.cuantity * containsCount(rule.bag)
        }
    }
    return 0
    
}

print(containsCount("shiny gold bags"))
//bagrules.remove(at: bagrules.index(forKey: "shiny gold bags")!)
//
//
//func contains(keys: [String]) -> Int {
//    var count = 0
//    for key in keys {
//        if key == "shiny gold bags" {
//            count = 1
//        }
//        else {
//            if let keys = bagrules[key] {
//                if contains(keys: keys) == 1 {
//                    count = 1
//                }
//            }
//        }
//    }
//    return count
//}
//
//var count = 0
//
//for key in bagrules.keys.sorted() {
//    count += contains(keys: [key])
//}
//
//print(count)
