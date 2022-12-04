extension CustomStringConvertible {
    func print() {
        Swift.print(self)
    }
    func print(prefix: String) {
        Swift.print(prefix, self)
    }
    
    func dprint() -> Self {
        Swift.print(self)
        return self
    }
    func dprint(prefix: String) -> Self {
        Swift.print(prefix, self)
        return self
    }
}
