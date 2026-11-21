import Foundation

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("the Person instance is about to free")
    }
}

var referenceOne: Person?
var referenceTwo: Person?

referenceOne = Person(name: "Jonh")
referenceTwo = referenceOne

referenceOne = nil
referenceTwo = nil

// retain cycle

class PersonPhone {
    var name: String
    var phone: Phone?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("the Person instance is about to free")
    }
}

class Phone {
    var model: String
    weak var owner: PersonPhone?
    init(model: String){
        self.model = model
    }
    deinit {
        print("the Phone instance is about to free")
    }
}

var personPhone: PersonPhone?
var phone: Phone?

personPhone = PersonPhone(name: "Steve")
phone = Phone(model: "Iphone")

personPhone?.phone = phone
phone?.owner = personPhone

personPhone = nil
phone = nil
// weak / unowned
