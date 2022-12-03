extension CustomStringConvertible {
    func print() {
        Swift.print(self)
    }
    func print(prefex: String) {
        Swift.print(prefex, self)
    }
}
