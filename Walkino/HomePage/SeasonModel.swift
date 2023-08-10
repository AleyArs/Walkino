//
//  SeasonModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 19.11.2022.
//

import Foundation

struct SeasonGoal {
    let level: Int
    let claimed: Bool
    let goal: Int
    let claimable: Bool
    let levelPercent: Float
    let bottomMessage: String
    let prize: Int
    let nowPoint: Int
    let levelPoint : Int
    let lastUpdateTime : Int 
}


struct SeasonGoalList {
    static let seasonGoalList = [
       SeasonGoal(level: 1, claimed: true, goal: 15000, claimable: false, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349, levelPoint: 1000, lastUpdateTime: 48000000),
       SeasonGoal(level: 2, claimed: true, goal: 15000, claimable: false, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349,levelPoint: 2000, lastUpdateTime: 48000000),
       SeasonGoal(level: 3, claimed: false, goal: 20000, claimable: true, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349,levelPoint: 3000,lastUpdateTime: 48000000),
       SeasonGoal(level: 4, claimed: false, goal: 20000, claimable: true, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349, levelPoint: 4000, lastUpdateTime: 48000000),
       SeasonGoal(level: 5, claimed: false, goal: 20000, claimable: true, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349, levelPoint: 5000, lastUpdateTime: 48000000),
       SeasonGoal(level: 6, claimed: false, goal: 180000, claimable: false, levelPercent: 0.9, bottomMessage: "mesaj", prize: 50,nowPoint: 1349,levelPoint: 6000, lastUpdateTime: 4800000000),
       SeasonGoal(level: 7, claimed: false, goal: 40000, claimable: false, levelPercent: 0, bottomMessage: "mesaj", prize: 50,nowPoint: 1349,levelPoint: 7000, lastUpdateTime: 48000000)
     ]
}

