var dic: [String:String] = [:]

for row in input.split(separator: "\n") {
  let asdf = row.split(separator: ")")
  dic[String(asdf.last!)] = String(asdf.first!)
}

func plannetsToCOM(_ planet: String) -> [String] {
  if let orbits = dic[planet] {
    return plannetsToCOM(orbits) + [planet]
  }
  return []
}

let tot = dic.keys.reduce(0) { result, planet in
  result + plannetsToCOM(planet).count
}

print("Part 1", tot)

let you = plannetsToCOM(dic["YOU"]!)
let san = plannetsToCOM(dic["SAN"]!)

print("Part 2", Set(you).symmetricDifference(san).count)
