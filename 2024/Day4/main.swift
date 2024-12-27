import Foundation


let m = input.components(separatedBy: .newlines)
    .map({$0.map({String($0)})})


var xmasCount = 0

for i in 0..<m.rows {
    for j in 0..<m.columns {
        if m[i,j] == "X" {
            // Cartesian
            if (m[i+0,j+1] == "M" && m[i+0,j+2] == "A" && m[i+0,j+3] == "S") { xmasCount += 1 }
            if (m[i+0,j-1] == "M" && m[i+0,j-2] == "A" && m[i+0,j-3] == "S") { xmasCount += 1 }
            if (m[i+1,j+0] == "M" && m[i+2,j+0] == "A" && m[i+3,j+0] == "S") { xmasCount += 1 }
            if (m[i-1,j+0] == "M" && m[i-2,j+0] == "A" && m[i-3,j+0] == "S") { xmasCount += 1 }
            
            // Diagonals
            if (m[i+1,j+1] == "M" && m[i+2,j+2] == "A" && m[i+3,j+3] == "S")  { xmasCount += 1 }
            if (m[i-1,j-1] == "M" && m[i-2,j-2] == "A" && m[i-3,j-3] == "S")  { xmasCount += 1 }
            if (m[i+1,j-1] == "M" && m[i+2,j-2] == "A" && m[i+3,j-3] == "S")  { xmasCount += 1 }
            if (m[i-1,j+1] == "M" && m[i-2,j+2] == "A" && m[i-3,j+3] == "S")  { xmasCount += 1 }
        }
    }
}

print("Part1 : \(xmasCount)")


var masCount = 0

for i in 0..<m.rows {
    for j in 0..<m.columns {
        if m[i,j] == "A" {
            //M.S
            //.A.
            //M.S
            if (m[i-1,j-1] == "M" && m[i-1,j+1] == "S" &&
                m[i+1,j-1] == "M" && m[i+1,j+1] == "S") { masCount += 1 }
            
            if (m[i-1,j-1] == "M" && m[i-1,j+1] == "M" &&
                m[i+1,j-1] == "S" && m[i+1,j+1] == "S") { masCount += 1 }
            
            if (m[i-1,j-1] == "S" && m[i-1,j+1] == "S" &&
                m[i+1,j-1] == "M" && m[i+1,j+1] == "M") { masCount += 1 }
            
            if (m[i-1,j-1] == "S" && m[i-1,j+1] == "M" &&
                m[i+1,j-1] == "S" && m[i+1,j+1] == "M") { masCount += 1 }
        }
    }
}

print("Part2 : \(masCount)")
