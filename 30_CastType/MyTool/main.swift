import Foundation

// оператор проверки типа и оператор приведения типа

class Sweet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Chocolate: Sweet {
    let isFavorite: Bool
    
    init(name:String, isFavorite: Bool) {
        self.isFavorite = isFavorite
        super.init(name: name)
    }
}

class Lollipop: Sweet {
    let flavor: String
    init(name: String, flavor: String) {
        self.flavor = flavor
        super.init(name: name)
    }
}

var sweets: [Sweet] = []
sweets.append(Chocolate(name: "Alenka", isFavorite: false))
sweets.append(Chocolate(name: "Rittersport", isFavorite: true))
sweets.append(Chocolate(name: "Alenka", isFavorite: true))

sweets.append(Lollipop(name: "ChupaChups", flavor: "cherry"))
sweets.append(Lollipop(name: "Bonbon", flavor: "lemon"))

func divideSweets(sweets: [Sweet]) {
    var chocolateCount = 0
    var lollipoCount = 0
    for sweet in sweets {
        if sweet is Chocolate {
            chocolateCount += 1
        } else {
            lollipoCount += 1
        }
    }
    print("There are \(chocolateCount) chocolates and \(lollipoCount) lollipops")
}

divideSweets(sweets: sweets)

func findFavChocolates(sweets: [Sweet]) {
    var favChocolates: [Sweet] = []
    for sweet in sweets {
        if let chocolate = sweet as? Chocolate {
            if chocolate.isFavorite {
                favChocolates.append(chocolate)
            }
        }
    }
    for chocolate in favChocolates {
        print(chocolate.name)
    }
}
findFavChocolates(sweets: sweets)
