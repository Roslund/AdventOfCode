// FS root
let root = fsObject(type: .Dir, name: "/")
//Current workin directory
var wd = root
// Store a list of all subdirs for easy access
var subdirs: [fsObject] = []


let lines = input.split(separator: /\n/).dropFirst()

//Parsing the input, building the filesystem.
for line in lines {
    if let match = String(line).firstMatch(of: /\$ cd (?<directory>.*)/) {
        let subdir = String(match.directory)
        if subdir == ".." {
            wd = wd.parent!
        } else {
            wd = wd.contents[subdir]!
        }
    }
    
    if let match = String(line).firstMatch(of: /(?<size>[0-9]+) (?<name>.*)/) {
        let size = Int(match.size)!
        let name = String(match.name)
        wd.contents[name] = fsObject(type: .File, name: name, size: size, parent: wd)
    }
    
    if let match = String(line).firstMatch(of: /dir (?<directory>.*)/) {
        let name = String(match.directory)
        wd.contents[name] = fsObject(type: .Dir, name: name, parent: wd)
        
        // Store a list of all subdirs for easy access
        subdirs.append(wd.contents[name]!)
    }
    
}


subdirs
    .filter { $0.size <= 100000}
    .reduce(0, {$0 + $1.size})
    .print(prefix: "Part 1: ")


// Why the parentheses are needed, idk...
let toremove = 30000000 - (70000000 - root.size)

subdirs.sorted(by: \.size)
    .first(where: {$0.size > toremove})!
    .size
    .print(prefix: "Part 2: ")
