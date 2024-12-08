import Foundation
let test = [[7,7,[[5,1,4,9,4],8,[8],[1,1,6,2]],[[],3,6,[],[]]],[],[10,2,7],[0,[1,2,4,1,0],[1,[],0],5,[]],[4,[[],[],[]],[]]]



//test.println()

//print(type(of: test))

var n = 1
var x = 1
while x <= 12623 {
    x = n*n*4
    n+=1
    if x > 5599 {
        print(x)
    }
}

let north = [
38.416,
39.204,
40.000,
40.804,
41.616,
]

let east = [
05.776,
06.084,
06.400,
06.724,
07.056,
07.396,
07.744,
08.100,
08.464,
08.836,
09.216,
09.604,
10.000,
10.404,
10.816,
11.236,
11.664,
12.100,
12.544,
]

import Algorithms
import CoreLocation

let myst = CLLocation(latitude: 60.66851700, longitude: 17.15185000)
for (north, east) in product(north, east) {
    //print(north, east)
    let coord = CLLocation(latitude: 60+north/60, longitude: 17+east/60)
    
    if coord.distance(from: myst) < 3200 {
        
        print(String(format: "N60 %.3f", (coord.coordinate.latitude-60)*60), terminator: " ")
        print(String(format: "E17 %.3f", (coord.coordinate.longitude-17)*60))
        
    }
}
