import Foundation

var numbers = input.components(separatedBy: .newlines)

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func req(_ input: [String], i: Int) {
    if input.count == 1 {
        print(Int(input.first!, radix: 2)!)
        
    } else {
        let bit = input.map { $0[i] }
        let count = bit.filter({$0 == "1" }).count
        if count >= input.count-count {
            req(input.filter({ $0[i] == "0" }), i: i+1)
        } else {
            req(input.filter({ $0[i] == "1" }), i: i+1 )
        }
    }
}

//req(numbers, i: 0)
print(1909 * 2322)
//1909
// 2322


