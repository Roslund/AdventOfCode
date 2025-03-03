func transform(number: Int) -> [Int] {
    if number == 0 {
        return [1]
    }
    if String(number).count.isMultiple(of: 2) {
        let a = String(number)
        return [Int(a.prefix(a.count/2))!, Int(a.suffix(a.count/2))!]
    }
    return [number*2024]
}


let test = [2]
let sample = [125, 17]
let input = [510613, 358, 84, 40702, 4373582, 2, 0, 1584]

var asdf = test
for i in 0..<15 {
    print("\(i): \(asdf.count)")
    print(asdf)
    asdf = asdf.flatMap(transform(number:))
    asdf = asdf.filter({![0,1,2].contains($0)})
    
}

print(asdf.count)
 
