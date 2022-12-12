import Foundation

let sample = """
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k
"""



class Directory {
    let parent: Directory
    let path: String
    let name: String
    let size: Int
    
    internal init(parent: Directory, path: String, name: String, size: Int) {
        self.parent = parent
        self.path = path
        self.name = name
        self.size = size
    }
}

//Current workin directory
var wd = ""


let lines = sample.split(separator: /\n/)

for line in lines {
//    if let match = String(line).firstMatch(of: /\$ cd (?<directory>.*)/) {
    if let match = String(line).firstMatch(of: /(?<size>[0-9]+) (?<name>.*)/) {
        print(match.size, match.name)
        
    }
    
}
