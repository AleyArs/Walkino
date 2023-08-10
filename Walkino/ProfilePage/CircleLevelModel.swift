//
//  CircleLevelModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.10.2022.
//

import Foundation

struct Rosette {
    let sıra: Int
    let rosetteImage : String
    let goldStep : Int
    let rosetteName : String
    let rosetteLevel : Int
    let rosetteDone : Int
    let percentageComplete : Double
    var shouldShowTitle:Bool{
        percentageComplete <= 1
    }
}
struct CircleLevelList {
    static let four = [
        Rosette(sıra: 1, rosetteImage: "Football", goldStep: 25, rosetteName: "Football Star", rosetteLevel: 12, rosetteDone: 12, percentageComplete: 1),
        Rosette(sıra: 2, rosetteImage: "voleybol", goldStep: 25 ,rosetteName: "Voleybol Star", rosetteLevel: 16, rosetteDone: 8, percentageComplete: 0.50),
        Rosette(sıra: 3, rosetteImage: "Tabletennis", goldStep: 25, rosetteName: "Tabletennis Star", rosetteLevel: 12, rosetteDone: 4, percentageComplete: 0.33),
        Rosette(sıra: 4, rosetteImage: "Basketball", goldStep: 25, rosetteName: "Basketball Star", rosetteLevel: 10, rosetteDone: 1, percentageComplete: 1)
     ]
}



