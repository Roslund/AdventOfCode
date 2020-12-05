import Foundation

struct Passport: Codable {
    let byr: String?
    let iyr: String?
    let eyr: String?
    let hgt: String?
    let hcl: String?
    let ecl: String?
    let pid: String?
    let cid: String?
}


let decoder = JSONDecoder()
let input = try decoder.decode([Passport].self, from: json.data(using: .utf8)!)

let valid = input.filter { passport in
    return passport.byr != nil &&
            passport.iyr != nil &&
            passport.eyr != nil &&
            passport.hgt != nil &&
            passport.hcl != nil &&
            passport.ecl != nil &&
            passport.pid != nil
}
 
print(valid.count)

func validateBYR(_ passport: Passport) -> Bool {
    guard let byr = Int(passport.byr ?? "0") else { return false }
    return (1920...2002).contains(Int(byr))
}

func validateIYR(_ passport: Passport) -> Bool {
    guard let iyr = Int(passport.iyr ?? "0") else { return false }
    return (2010...2020).contains(Int(iyr))
}

func validateEYR(_ passport: Passport) -> Bool {
    guard let eyr = Int(passport.eyr ?? "0") else { return false }
    return (2020...2030).contains(Int(eyr))
}

func validateHGT(_ passport: Passport) -> Bool {
    guard var hgt = passport.hgt else { return false }
    let unit = hgt.removeLast(); hgt.removeLast()

    if unit == "m" {
        return (150...193).contains(Int(hgt)!)
    }
    return (59...76).contains(Int(hgt)!)
}

//validateHGT(Passport(byr: nil, iyr: nil, eyr: nil, hgt: "167cm", hcl: nil, ecl: nil, pid: nil, cid: nil))

func validateHCL(_ passport: Passport) -> Bool {
    guard let hcl = passport.hcl else { return false }

    let regex = try! NSRegularExpression(pattern: "#[0-9,a-f]{6}$")
    let range = NSRange(location: 0, length: hcl.utf16.count)
    let match = regex.firstMatch(in: hcl, options: [], range: range)
    return match != nil
}

func validateECL(_ passport: Passport) -> Bool {
    guard let ecl = passport.ecl else { return false }

    return ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"].contains(ecl)
}

func validatePID(_ passport: Passport) -> Bool {
    guard let pid = passport.pid else { return false }

    let regex = try! NSRegularExpression(pattern: "^[0-9]{9}$")
    let range = NSRange(location: 0, length: pid.utf16.count)
    let match = regex.firstMatch(in: pid, options: [], range: range)
    return match != nil
}



func validate(passport: Passport) -> Bool {
    return true &&
        validateBYR(passport) &&
        validateIYR(passport) &&
        validateEYR(passport) &&
        validateHGT(passport) &&
        validateHCL(passport) &&
        validateECL(passport) &&
        validatePID(passport)
}

print(valid.filter(validate(passport:)).count)

// 138 too high
// 120 too low
