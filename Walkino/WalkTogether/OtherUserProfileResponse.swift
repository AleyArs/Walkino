//
//  OtherUserProfileResponse.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.01.2023.
//

import Foundation

struct OtherUserProfileResponse  {

    let userName : String
    let level : Int
    let photo : String
    let followerCount : Int
    let followCount : Int
    let name : String
    let title : String
    let bio : String
    let rosette : [Rosette]
    let activities : [ActivityModel]
    let following: Bool
    let docId : String
}

struct OtherUserProfileResponseList {
    static let one = [
        OtherUserProfileResponse(userName: "user1", level: 8, photo: "Ellipse", followerCount: 23, followCount: 43, name: "user1", title: "user1 information", bio: "ahsdgjmdhm", rosette: [Rosette.init(sıra: 1, rosetteImage: "Football", goldStep: 25, rosetteName: "Football Star", rosetteLevel: 12, rosetteDone: 12, percentageComplete: 1), Rosette.init(sıra: 2, rosetteImage: "Basketball", goldStep: 25, rosetteName: "Baketbol Yıldızı", rosetteLevel: 12, rosetteDone: 7, percentageComplete: 0)], activities: [ActivityModel.init(sıra: 1, photo: "activityy1", desImage: "mangaa", userCount: 4, title: "Bebek Sahili",goldStep: 120, activityDate: "02/01/2023 - 10:00",      TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
                            totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                            totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                            totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
            ActivitySort: [activitySort(order: 1, firstname: "merve", lastname: "kaya", nickname: "serseri", image: "mangaa"),
                        activitySort(order: 2, firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                         activitySort(order: 3, firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                        activitySort(order: 4, firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")])], following: true, docId: "jhgvv"),
            
            OtherUserProfileResponse(userName: "user2", level: 9, photo: "Ellipse", followerCount: 233, followCount: 234, name: "user2", title: "user2 information", bio: "hdgjhgjhsz", rosette: [Rosette.init(sıra: 1, rosetteImage: "Football", goldStep: 25, rosetteName: "Football Star", rosetteLevel: 12, rosetteDone: 12, percentageComplete: 1)], activities: [ActivityModel.init(sıra: 1, photo: "activityy1", desImage: "mangaa", userCount: 4, title: "Bebek Sahili",goldStep: 120, activityDate: "02/01/2023 - 10:00",      TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
                            totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                            totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                            totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
                ActivitySort: [activitySort(order: 1, firstname: "merve", lastname: "kaya", nickname: "serseri", image: "mangaa"),
                        activitySort(order: 2, firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                         activitySort(order: 3, firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                        activitySort(order: 4, firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")])], following: true, docId: "jhgvv"),
            OtherUserProfileResponse(userName: "user23", level: 9, photo: "Ellipse", followerCount: 2333, followCount: 2434, name: "user3", title: "user3 information", bio: "dshjgkdhjdk", rosette: [Rosette.init(sıra: 1, rosetteImage: "Football", goldStep: 25, rosetteName: "Football Star", rosetteLevel: 12, rosetteDone: 12, percentageComplete: 1)], activities: [ActivityModel.init(sıra: 1, photo: "activityy1", desImage: "mangaa", userCount: 4, title: "Bebek Sahili",goldStep: 120, activityDate: "02/01/2023 - 10:00",      TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
                            totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                            totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                            totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
            ActivitySort: [activitySort(order: 1, firstname: "merve", lastname: "kaya", nickname: "serseri", image: "mangaa"),
                        activitySort(order: 2, firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
                         activitySort(order: 3, firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
                        activitySort(order: 4, firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")])], following: true, docId: "jhgvv"),
 ]
}
