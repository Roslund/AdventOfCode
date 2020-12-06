let boardingpasses = input.map({Int($0, radix: 2)!})
print(boardingpasses.max()!)

let freeSeats = Set(0...1023).subtracting(boardingpasses)
let mySeat = freeSeats.filter { seat in
    boardingpasses.contains(seat-1) && boardingpasses.contains(seat+1)
}

print(mySeat)
