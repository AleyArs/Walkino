//
//  ActivityModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 1.12.2022.
//

import Foundation

struct ActivityModel {
    let sıra: Int
    let photo : String
    let desImage : String
    let userCount: Int
    let title : String
    let goldStep : Int
    let activityDate : String
    let TotalUser : [totalUser]
    let ActivitySort : [activitySort]
}

struct ActivityModelList {
    static let activityList = [
ActivityModel(sıra: 1, photo: "activityy1", desImage: "mangaa", userCount: 4, title: "Bebek Sahili",goldStep: 120, activityDate: "02/01/2023 - 10:00",
TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
            totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
            totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
            totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
ActivitySort: [activitySort(order: 1, firstname: "user1", lastname: "kaya", nickname: "serseri", image: "mangaa"),
               activitySort(order: 2, firstname: "user2", lastname: "bilir", nickname: "bilir", image: "manga"),
               activitySort(order: 3, firstname: "user3", lastname: "kaya", nickname: "melike", image: "manga"),
               activitySort(order: 4, firstname: "user4", lastname: "sende", nickname: "tutuklu", image: "manga"),
               activitySort(order: 1, firstname: "user1", lastname: "kaya", nickname: "serseri", image: "mangaa"),
                              activitySort(order: 2, firstname: "user2", lastname: "bilir", nickname: "bilir", image: "manga"),
                              activitySort(order: 3, firstname: "user3", lastname: "kaya", nickname: "melike", image: "manga"),
                              activitySort(order: 4, firstname: "user4", lastname: "sende", nickname: "tutuklu", image: "manga")]),
                      
ActivityModel(sıra: 2, photo: "activityy2", desImage: "mangaa", userCount: 4, title: "Doğa Yürüyüşü", goldStep: 120, activityDate: "10/01/2023 - 10:00",
  TotalUser: [totalUser(firstname: "merve", lastname: "kaya", nickname: "serseri", image: "manga"),
            totalUser(firstname: "mehmet", lastname: "bilir", nickname: "bilir", image: "manga"),
            totalUser(firstname: "melike", lastname: "kaya", nickname: "melike", image: "manga"),
            totalUser(firstname: "ben", lastname: "sende", nickname: "tutuklu", image: "manga")],
ActivitySort: [activitySort(order: 1, firstname: "user5", lastname: "kaya", nickname: "serseri", image: "mangaa"),
               activitySort(order: 3, firstname: "user6", lastname: "bilir", nickname: "bilir", image: "manga"),
               activitySort(order: 2, firstname: "user7", lastname: "kaya", nickname: "melike", image: "manga"),
                activitySort(order: 4, firstname: "user8", lastname: "sende", nickname: "tutuklu", image: "manga")
              ]),
            ]
    }

struct totalUser {
    let firstname : String
    let lastname : String
    let nickname : String
    let image: String
}
struct activitySort {
    let order : Int
    let firstname : String
    let lastname : String
    let nickname : String
    let image: String
}
