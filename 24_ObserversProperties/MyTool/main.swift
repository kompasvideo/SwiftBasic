import Foundation

// Наблюдатели свойств

class BasketballPlayer {
    var ballCount = 0 {
        willSet {
            print("Go! Go! Go!")
            print("You have thron \(newValue) balls")
        }
        didSet {
            print("Congalutations!")
            print("Before this ball your source was \(oldValue) balls")
        }
    }
}


let player = BasketballPlayer()
player.ballCount = 3
