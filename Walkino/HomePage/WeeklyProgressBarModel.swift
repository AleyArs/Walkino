//
//  WeeklyProgressBarModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 21.10.2022.
//

import Foundation

struct FitnessStats: Identifiable {
    let id = UUID()
    let step: Int
    let distance: Float
    let calorie: Float
    let weekDay : String
    
}

struct FitnessData: Identifiable {
    let id = UUID()
    let startMonth: Int
    let endMonth: Int
    let month: String
    let averageStep: Int
    let averageStepForDayofSixMonth: Int
    let totalStep: Int
}



struct FitnessStatsData {
    static let FitnessStatsSampleData = [
        FitnessStats(step: 25000, distance: 12.2, calorie: 96, weekDay: "pzt"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Sal"),
        FitnessStats(step: 3400, distance: 3.0, calorie: 12, weekDay: "Çar"),
        FitnessStats(step: 2300, distance: 2.0, calorie: 9, weekDay: "Per"),
        FitnessStats(step: 15000, distance: 12.2, calorie: 96, weekDay: "Cum"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Cmt"),
        FitnessStats(step: 3000, distance: 3, calorie: 32, weekDay: "Paz")
     ]
}

struct FitnessStatsMonthData {
    static let FitnessStatsMonthData = [
        FitnessStats(step: 25000, distance: 12.2, calorie: 96, weekDay: "pzt"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Sal"),
        FitnessStats(step: 3400, distance: 3.0, calorie: 12, weekDay: "Çar"),
        FitnessStats(step: 2300, distance: 2.0, calorie: 9, weekDay: "Per"),
        FitnessStats(step: 15000, distance: 12.2, calorie: 96, weekDay: "Cum"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Cmt"),
        FitnessStats(step: 3000, distance: 3, calorie: 32, weekDay: "Paz"),
        FitnessStats(step: 25000, distance: 12.2, calorie: 96, weekDay: "pzt"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Sal"),
        FitnessStats(step: 3400, distance: 3.0, calorie: 12, weekDay: "Çar"),
        FitnessStats(step: 2300, distance: 2.0, calorie: 9, weekDay: "Per"),
        FitnessStats(step: 20000, distance: 12.2, calorie: 96, weekDay: "Cum"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Cmt"),
        FitnessStats(step: 3000, distance: 3, calorie: 32, weekDay: "Paz"),
        FitnessStats(step: 25000, distance: 12.2, calorie: 96, weekDay: "pzt"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Sal"),
        FitnessStats(step: 3400, distance: 3.0, calorie: 12, weekDay: "Çar"),
        FitnessStats(step: 2300, distance: 2.0, calorie: 9, weekDay: "Per"),
        FitnessStats(step: 15000, distance: 12.2, calorie: 96, weekDay: "Cum"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Cmt"),
        FitnessStats(step: 3000, distance: 3, calorie: 32, weekDay: "Paz"),
        FitnessStats(step: 25000, distance: 12.2, calorie: 96, weekDay: "pzt"),
        FitnessStats(step: 7500, distance: 6.4, calorie: 23, weekDay: "Sal"),
        FitnessStats(step: 3400, distance: 3.0, calorie: 12, weekDay: "Çar"),
        FitnessStats(step: 2300, distance: 2.0, calorie: 9, weekDay: "Per"),
        FitnessStats(step: 15000, distance: 12.2, calorie: 96, weekDay: "Cum"),
        FitnessStats(step: 30000, distance: 6.4, calorie: 23, weekDay: "Cmt"),
        FitnessStats(step: 45000, distance: 3, calorie: 32, weekDay: "Paz")
     ]
}

struct FitnessSixMonthData {
    static let FitnessSixMonthSampleData = [
        FitnessData(startMonth: 1, endMonth: 6, month: "May", averageStep: 10000, averageStepForDayofSixMonth: 7355, totalStep: 50),
        FitnessData(startMonth: 1, endMonth: 6, month: "Haz", averageStep: 10000, averageStepForDayofSixMonth: 7355, totalStep: 50),
        FitnessData(startMonth: 1, endMonth: 6, month: "Tem", averageStep: 20000, averageStepForDayofSixMonth: 7355, totalStep: 50),
        FitnessData(startMonth: 1, endMonth: 6, month: "Ağu", averageStep: 30000, averageStepForDayofSixMonth: 7355, totalStep: 50),
        FitnessData(startMonth: 1, endMonth: 6, month: "Eyl", averageStep: 15000, averageStepForDayofSixMonth: 7355, totalStep: 50),
        FitnessData(startMonth: 1, endMonth: 6, month: "Eki", averageStep: 5000, averageStepForDayofSixMonth: 7355, totalStep: 50)
    
     ]
}
