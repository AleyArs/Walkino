//
//  PastDuelModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 21.11.2022.
//

import Foundation

struct PastDuel{
    let id = UUID()
    let user1StepCount: Int
    let user2StepCount: Int
    let user1Name: String
    let user2Name: String
    let user1Phote: String
    let user2Phote: String
    let goldAmount: Int
    let time: String
    let situation : Bool
}

struct PastDuelList {
    static let pastDuelList = [
        PastDuel(user1StepCount: 4241, user2StepCount: 12400, user1Name: "aleynaarslankaya", user2Name: "meliherdurmus", user1Phote: "mangaa", user2Phote: "mangaa", goldAmount: 25, time: "2", situation: false),
        PastDuel(user1StepCount: 17500, user2StepCount: 12400, user1Name: "aleynaarslankaya", user2Name: "meliherdurmus", user1Phote: "mangaa", user2Phote: "mangaa", goldAmount: 25, time: "2", situation: true),
        PastDuel(user1StepCount: 4241, user2StepCount: 12400, user1Name: "aleynaarslankaya", user2Name: "meliherdurmus", user1Phote: "mangaa", user2Phote: "mangaa", goldAmount: 25, time: "2", situation: false),
        PastDuel(user1StepCount: 17500, user2StepCount: 12400, user1Name: "aleynaarslankaya", user2Name: "meliherdurmus", user1Phote: "mangaa", user2Phote: "mangaa", goldAmount: 25, time: "2", situation: true),
    ]}
