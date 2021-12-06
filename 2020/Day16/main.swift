let ranges = [
47...691,
713...954,
44...776,
799...969,
37...603,
627...953,
41...240,
259...955,
42...370,
383...961,
50...117,
136...962,
33...86,
104...973,
29...339,
347...962,
46...644,
659...970,
31...584,
604...960,
42...107,
115...971,
31...753,
770...972,
40...515,
525...957,
31...453,
465...971,
46...845,
868...965,
45...475,
489...960,
34...317,
323...968,
47...150,
159...969,
45...261,
279...955,
33...879,
891...952
]
let validNumbers = ranges.reduce([]) { a,b in
    a+b.map({$0})
}.sorted()

let tickets = nerbytickets.split(separator: "\n").map({line in
    line.split(separator: ",")
        .map({Int($0)!})
})











//departure location: 47-691 or 713-954
//departure station: 44-776 or 799-969
//departure platform: 37-603 or 627-953
//departure track: 41-240 or 259-955
//departure date: 42-370 or 383-961
//departure time: 50-117 or 136-962
//arrival location: 33-86 or 104-973
//arrival station: 29-339 or 347-962
//arrival platform: 46-644 or 659-970
//arrival track: 31-584 or 604-960
//class: 42-107 or 115-971
//duration: 31-753 or 770-972
//price: 40-515 or 525-957
//route: 31-453 or 465-971
//row: 46-845 or 868-965
//seat: 45-475 or 489-960
//train: 34-317 or 323-968
//type: 47-150 or 159-969
//wagon: 45-261 or 279-955
//zone: 33-879 or 891-952

//let validtickets = tickets
//    .filter { ticket in
//        Set(ticket).subtracting(validNumbers).isEmpty
//    }
//
//print(validtickets.count)


let test = [
    [1,2,3],
    [4,5,6]
]

let transposed = (0..<test.columns).map({ i in
    test.map({ row in
        row[i]
    })
})

print(transposed
        .first!.filter({
            !Set(47...691).union(713...954).contains($0)
        }).isEmpty
)
