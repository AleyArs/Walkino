//
//  PastWalkTogetherModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.10.2022.
//

import Foundation

struct PastWalk{
    let id = UUID()
    let user1StepCount : Int
    let user2StepCount: Int
    let stepGoal: Int
    let user1Name: String
    let user2Name : String
    let user1Photo: String
    let user2Photo : String
    let endDate: Double
    var shouldShowTitle:Bool{
        endDate <= 1
    }
}
func sum(user1StepCount:Int , user2StepCount: Int ) -> Int{
    return user1StepCount + user2StepCount
}
func hesap(user1StepCount:Int , user2StepCount: Int, stepGoal: Int ) -> Bool{
    let toplam = (user1StepCount + user2StepCount) > stepGoal
    return toplam
}
func kar(sum: Int , stepGoal: Int) -> Bool{
    return sum > stepGoal
}
struct PastWalkList {
    static let two = [
        PastWalk(user1StepCount: 1234, user2StepCount: 2345, stepGoal: 3000, user1Name: "aliş", user2Name: "meliş", user1Photo: "mangaa", user2Photo: "mangaa", endDate: 1.0),
        PastWalk(user1StepCount: 3445, user2StepCount: 1799, stepGoal: 6000, user1Name: "aliş", user2Name: "meliş", user1Photo: "mangaa", user2Photo: "mangaa", endDate: 0.43),
        PastWalk(user1StepCount: 1234, user2StepCount: 2345, stepGoal: 3000, user1Name: "aliş", user2Name: "meliş", user1Photo: "mangaa", user2Photo: "mangaa", endDate: 1.0),
        PastWalk(user1StepCount: 1234, user2StepCount: 2345, stepGoal: 3000, user1Name: "aliş", user2Name: "meliş", user1Photo: "mangaa", user2Photo: "mangaa", endDate: 1.0)
    ]}

let islem1 = hesap(user1StepCount: 4, user2StepCount: 5, stepGoal: 7)





        
        

















