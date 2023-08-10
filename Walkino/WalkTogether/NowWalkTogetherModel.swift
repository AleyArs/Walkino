//
//  NowWalkTogetherModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 1.12.2022.
//

import Foundation

struct NowWalkTogether{
    let state: String
    let user1StepCount : Int
    let user2StepCount: Int
    let stepGoal: Int
    let user1Name: String
    let user2Name: String
    let user1Photo: String
    let user2Photo: String
    let percent: Float
    let time: Int64
    let startTime: Int64
    let lastUpdateTime: Int
    let docId: String
    }

struct NowWalkTogetherList {
    static let one = [
        NowWalkTogether(state: "aktif", user1StepCount: 1245, user2StepCount: 7500, stepGoal: 20000, user1Name: "aliş", user2Name: "merviş", user1Photo: "mangaa", user2Photo: "mangaa", percent: 0.43 , time: 600000, startTime: 70000, lastUpdateTime: 48000000 , docId: "dosya")
    ]}

func convertTime(lastUpdateTime: Int) -> String {
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






