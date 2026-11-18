import Foundation

// type aliaces

typealias Centigrade = Int

let temperature: Centigrade = 25
let anotherTemp = 20

let difference = temperature - anotherTemp

typealias CompletionHandler = (Int, String) -> String
func someFunc(clousure: CompletionHandler){
    
}
