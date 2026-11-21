import Foundation

// Типы Any и AnyObjects

let things: [Any] = [1, "str", 2.4, true]
if let firstElement = things.first as? Int {
    print("\(firstElement) is an integer")
}

class First {
    
}

class Second {
    
}

class Third {
    
}

let first = First()
let second = Second()
let third = Third()
let objects: [AnyObject] = [first, second, third]
