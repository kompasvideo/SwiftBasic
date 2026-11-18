import Foundation

// перечисления

enum Meal {
    case breakfast
    case brunch
    case lunch
    case dinner
}

var mealTime = Meal.breakfast
mealTime = .brunch

func chooseMail(for mealTime: Meal){
    var food = ""
    var drink = ""
    switch mealTime {
    case .breakfast:
        food = "brioch"
        drink = "coffes"
    case .brunch:
        food = "sandwich"
        drink = "water"
    case .lunch:
        food = "saled"
        drink = "lemonade"
    case .dinner:
        food = "pasta"
        drink = "wine"
    }
    
    print("I will eat \(food) and drink some \(drink)")
}

chooseMail(for: .brunch)

enum Friends: String {
    case rachel = "Rachel"
    case monika = "Monika"
    case phoebe = "Phoebe"
    case joye = "Joye"
    case ross = "Ross"
    case chandler = "Chandler"
}
print(Friends.chandler.rawValue)
print(Friends.chandler)

enum Fingers: Int {
    case thumb = 1, index, middle, ring, little
}

print(Fingers.index.rawValue)

// Ассоцивные параметры
enum MealType {
    case breakfast(food: String)
    case dinner(food: String, wine: String)
    
    var time: Int {
        switch self {
            
        case .breakfast(food: _):
            return 10
        case .dinner(food: _, wine: _):
            return 19
        }
    }
}

var myMeal = MealType.dinner(food: "pizza", wine: "red")
print(myMeal.time)

switch myMeal {
case .breakfast(food: let food):
    print(food)
case .dinner(food: let food, wine: let wine):
    print("\(food) and \(wine) wine")
}
