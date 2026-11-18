import Foundation

// Структуры

struct Text {
    var font: String
    var fontSize: Int
    var title: String
    var content: String
    
    func showText(){
        print("""
            \(title)
            \(content)
            """)
    }
    
    mutating func increaseFontSize(by times: Int){
        fontSize *= times
    }
}

var textOne = Text(font: "Arial", fontSize: 20, title: "Cool text", content: "Some really cool text")
textOne.fontSize = 18
print(textOne.fontSize)

textOne.showText()
var textTwo = textOne
textTwo.title = "Second text"
print(textTwo.title)
print(textOne.title)
print()
textOne.increaseFontSize(by: 2)
print(textOne.fontSize)
print()

class NewText {
    var title: String
    
    init(title: String){
        self.title = title
    }
}

let newText = NewText(title: "New cool text")
newText.title = "New new text"
let anotherText = newText
anotherText.title = "Some title"
print(newText.title)
print(anotherText.title)

