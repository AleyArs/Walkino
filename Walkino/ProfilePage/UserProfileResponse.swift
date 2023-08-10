//
//  UserProfileResponse.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.12.2022.
//

import Foundation

struct UserProfileResponse {
    let userName : String
    let level : Int
    let photo : String
    let followerCount : Int
    let followCount : Int
    let name : String
    let title : String
    let bio : String
    let height : Float
    let weight : Float
    let dateOfBirth : Int
    let rosette : [Rosette]
    let activities : [ActivityModel]
    let docId : String
}

struct UserProfileResponseList {
    static let one = [
        UserProfileResponse(userName: "aleynaarslankaya", level: 12 , photo: "Ellipse", followerCount: 234, followCount: 217, name: "aleyna", title:"Walkino", bio: "Walkino Co-Founder", height: 171 , weight: 59, dateOfBirth: 140811996, rosette: [Rosette.init(sıra: 1, rosetteImage: "Football", goldStep: 25, rosetteName: "Fulbol Yıldızı", rosetteLevel: 12, rosetteDone: 12, percentageComplete: 1)
                                                                                                                                                                                                                                                      , Rosette.init(sıra: 2, rosetteImage: "voleybol", goldStep: 25 ,rosetteName: "Voleybol Star", rosetteLevel: 16, rosetteDone: 8, percentageComplete: 0.50), Rosette.init(sıra: 3, rosetteImage: "Tabletennis", goldStep: 25, rosetteName: "Masa Tenisi", rosetteLevel: 12, rosetteDone: 4, percentageComplete: 0.33), Rosette.init(sıra: 4, rosetteImage: "Basketball", goldStep: 25, rosetteName: "Basketball Yıldızı", rosetteLevel: 10, rosetteDone: 1, percentageComplete: 1)], activities: [ActivityModel.init(sıra: 1, photo: "activityy1", desImage: "mangaa", userCount: 4, title: "Bebek Sahili",goldStep: 120, activityDate: "02/01/2023 - 10:00",           TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                  totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                  totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                  totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
                                                                                                                                                                                                                                                                                                                                                                                                                                      ActivitySort: [activitySort(order: 1, firstname: "merve", lastname: "kaya", nickname: "serseri", image: "mangaa"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                     activitySort(order: 2, firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                     activitySort(order: 3, firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                     activitySort(order: 4, firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")])], docId: "aliş"),
        
     ]
}


