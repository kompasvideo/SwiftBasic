//
//  main.swift
//  Lazy
//
//  Created by Андрей Барышников on 09.11.2026.
//

import Foundation

class Importer {
    let someData = "Here we have ome data"
}

class SomeDataProcess {
    lazy var importer = Importer()
    let smallDataProcess = "small data processing"
    let averageDataProcess = "average data processing"
}

let process = SomeDataProcess()
print(process.smallDataProcess)
print(process.averageDataProcess)
print(process.importer.someData)

