enum fsType {
    case Dir
    case File
}

class fsObject {
    let parent: fsObject?
    let type: fsType
    let name: String
    let filesize: Int?
    var contents: [String: fsObject] = [:]
    
    // This is where the magic happens.
    lazy var size: Int = {
        switch type {
        case .File: return filesize!
        case .Dir:  return contents.values.reduce(0) { $0 + $1.size}
        }
    }()
    
    internal init(type: fsType, name: String, size: Int? = nil, parent: fsObject? = nil) {
        self.parent = parent
        self.type = type
        self.name = name
        self.filesize = size
    }
}
