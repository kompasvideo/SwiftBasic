import Foundation

// обработка ошибок

enum PrintingError: Error {
    case noPaper
    case noToner
}
struct Printer {
    var paper: Bool
    var tuner: Bool
}

func printMaterial(materialName: String, printer: Printer) throws -> String {
    guard printer.paper else {
        throw PrintingError.noPaper
    }
    guard printer.tuner else {
        throw PrintingError.noToner
    }
    return "the material \(materialName) has been printed"
}

var somePrinter = Printer(paper: true, tuner: false)
let ourMaterial = "Some very important text"
do {
    let response = try printMaterial(materialName: ourMaterial, printer: somePrinter)
    print(response)
} catch PrintingError.noPaper{
    print("There is no paper")
} catch PrintingError.noToner {
    print("There is no tuner")
}

