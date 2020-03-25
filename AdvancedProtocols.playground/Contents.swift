// Advanced Protocols


struct Stack {
    
    private var storage: [Any] = []
    
    mutating func push(_ element: Any) {
        storage.append(element)
    }
    
    mutating func pop() -> Any? {
        storage.popLast()
    }
    
    var top: Any? {
        return storage.last
    }
    
    var isEmpty: Bool {
        return top == nil
    }
    
}
