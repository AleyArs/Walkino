//
//  ActiveDuelModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 14.10.2022.
//

import Foundation
struct ActiveDuel{
    let state: String
    let user1StepCount: Int
    let user2StepCount: Int
    let user1Name: String
    let user2Name: String
    let user1Phote: String
    let user2Phote: String
    let stepDif: Int
    let goldAmount: Int
    let time: Int
    let lastUpdateTime: Int
    let startTime: Int
    let docId: String
    
    
}
func DifferenceFunction(user1StepCount:Int , user2StepCount: Int ) -> String{
    var firstUserStepFunc: Int = 0
    var secondUserStepFunc: Int = 0
    var DrawStepFunc: Int = 0
    if user1StepCount > user2StepCount{
        firstUserStepFunc = user1StepCount - user2StepCount
        return "\(firstUserStepFunc) adım öndesin"
    } else if user2StepCount > user1StepCount{
        secondUserStepFunc = user2StepCount - user1StepCount
        return "\(secondUserStepFunc) adım geridesin"
    } else if user1StepCount == user2StepCount {
        DrawStepFunc = user1StepCount - user2StepCount
        return "\(DrawStepFunc) berabere "
    }
    return ""
}

struct ActiveDuelList {
    static let activeDuelList = [
        ActiveDuel(state: "aktif", user1StepCount: 2000, user2StepCount: 3000, user1Name: "aleynaarslankaya", user2Name: "melikekaya", user1Phote: "mangaa", user2Phote: "mangaa", stepDif: 1000, goldAmount: 50, time: 30000, lastUpdateTime: 48000000, startTime: 48000000, docId: "dosya2")
    ]}

func convertDuelTime(lastUpdateTime: Int) -> String {
    var minutes: Int = 0
    var hours: Int = 0
    var days: Int = 0
    var secondsTemp: Int = 0
    var minutesTemp: Int = 0
    var hoursTemp: Int = 0

    if lastUpdateTime < 1000 {
        return ""
    } else if lastUpdateTime < 1000 * 60 * 60 {
        secondsTemp = lastUpdateTime / 1000
        minutes = secondsTemp / 60
        return "\(minutes) dakika"
    } else if lastUpdateTime < 1000 * 60 * 60 * 24 {
        minutesTemp = lastUpdateTime / 1000 / 60
        hours = minutesTemp / 60
        minutes = (lastUpdateTime - hours * 60 * 60 * 1000) / 1000 / 60
        return "\(hours) saat \(minutes) dakika"
    } else {
        hoursTemp = lastUpdateTime / 1000 / 60 / 60
        days = hoursTemp / 24
        hours = (lastUpdateTime - days * 24 * 60 * 60 * 1000) / 1000 / 60 / 60
        minutes = (lastUpdateTime - days * 24 * 60 * 60 * 1000 - hours * 60 * 60 * 1000) / 1000 / 60
        return "\(days) gün \(hours) saat \(minutes) dakika"
    }
}




