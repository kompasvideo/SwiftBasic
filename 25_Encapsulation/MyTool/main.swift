import Foundation


// Инкапсуляция, риватные свойства и методы класса

class PhoneBook {
    private var contacts: [String: String] = [:]
    
    func AddNewContact(name: String, phone: String) {
        contacts[name] = phone
    }
    
    func CheckMyContact() {
        for (contactName, phone) in contacts {
            print(contactName + ": " + phone)
        }
    }
}

let phoneBook = PhoneBook()
phoneBook.AddNewContact(name: "Lucy", phone: "+7666222")
phoneBook.AddNewContact(name: "Jane", phone: "+7888333")

phoneBook.CheckMyContact()

//phoneBook.contacts = ["blabla": "blabla"]
//phoneBook.contacts.removeAll()


