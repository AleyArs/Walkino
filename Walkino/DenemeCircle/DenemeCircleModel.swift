//
//  DenemeCircleModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.10.2022.
//

import Foundation

struct ProressCircleViewModel{

    let id = UUID()
    let title : String
    let message: String
    let done: Int
    let lenght : Int
    let percentageComplete : Double
    var shouldShowTitle:Bool{
        percentageComplete <= 1
    }
}

struct ProgressList {
    static let two = [
        ProressCircleViewModel(title: "day", message: "3 of 7", done: 3, lenght: 7, percentageComplete: 0.43),
        ProressCircleViewModel(title: "day2", message: "6 of 7", done: 6, lenght: 7, percentageComplete: 0.85),
        ProressCircleViewModel(title: "day3", message: "5 of 7", done: 5, lenght: 7, percentageComplete: 0.71)
     ]

}


