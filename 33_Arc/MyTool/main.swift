import Foundation

// ARC в замыканиях

var number = 5
var anotherNumber = 10

let closure = { [number] in
    print("\(number) and \(anotherNumber)")
}

closure()

number = 25
anotherNumber = 30
closure()

class Person {
    var name: String
    
    lazy var greetingMaker: () -> String = {
        "Hello, \(self.name)"
    }
    init(name: String) {
        self.name = name
    }
    deinit {
        print("the Person instance is about to free")
    }
}

var person: Person?
person = Person(name: "Jack")
print(person?.greetingMaker())
person = nil
