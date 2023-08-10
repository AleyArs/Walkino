//
//  GoldAwardModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import Foundation

struct GoldAward {
    let level: Int
    let claimed: Bool
    let goal: Int
    let claimable: Bool
    let levelPercent: Float
    let bottomMessage: String
}

struct GoldAwardList {
    static let goldAwardList = [
        GoldAward(level: 1, claimed: true, goal: 1000, claimable: false, levelPercent: 1, bottomMessage: "mesaj"),
        GoldAward(level: 2, claimed: false, goal: 3000, claimable: true, levelPercent: 1, bottomMessage: "mesaj"),
        GoldAward(level: 3, claimed: false, goal: 5000, claimable: false, levelPercent: 0.7, bottomMessage: "mesaj"),
        GoldAward(level: 4, claimed: false, goal: 7000, claimable: false, levelPercent: 0, bottomMessage: "mesaj"),
        GoldAward(level: 5, claimed: false, goal: 15000, claimable: false, levelPercent: 0, bottomMessage: "mesaj")
     ]
}
