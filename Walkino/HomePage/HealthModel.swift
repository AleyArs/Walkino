//
//  HealthModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.10.2022.
//

import Foundation

struct Step : Identifiable {
    let id = UUID() // Değiştir
    let count : Int
    let date : Date 
}

func convertFloat(goal: Int, count: Int) -> Float{
    var StepFloat : Float = 0.5
        StepFloat = Float(CGFloat(count) / CGFloat(goal))
        return StepFloat
}



