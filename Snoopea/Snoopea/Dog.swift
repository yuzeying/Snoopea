//
//  Dog.swift
//  Snoopea
//
//  Created by Zeying Yu on 3/15/21.
//

import Foundation
var dogs = [
    dog(name: "Bean", type: .Bulldog),
    dog(name: "Coco", type: .GoldenRetriever),
    dog(name: "Star", type: .GermanShepherd),
    dog(name: "Mocha", type: .Bulldog),
    dog(name: "Parker", type: .LabradorRetriever),
    dog(name: "Nola", type: .GermanShepherd),
    dog(name: "Pepper", type: .GermanShepherd),
    dog(name: "Ralph", type: .GoldenRetriever),
    dog(name: "Evan", type: .Bulldog),
    dog(name: "Gigi", type: .LabradorRetriever)
]

class dog{
    enum `Type`: String{
        case GermanShepherd = "GermanShepherd"
        case Bulldog = "Bulldog"
        case LabradorRetriever = "LabradorRetriever"
        case GoldenRetriever = "GoldenRetriever"
    }
    var name: String
    var type: Type
    var liver: Float
    var tripe: Float
    var heart: Float
    var otherOrgans: Float
    var eggShell: Int
    var meat: Float
    
    init(name: String, type: Type){
        self.name = name
        self.type = type
        self.meat = 0
        self.eggShell = 0
        self.liver = 50
        self.tripe = 50
        self.heart = 50
        self.otherOrgans = 50
    }
}
