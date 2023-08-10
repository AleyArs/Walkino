//
//  PersonModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 28.09.2022.
//

import Foundation

struct FollowingInfoResponse {
    let userName: String
    let followingCount: Int
    let followerCount: Int
    let followingList : [FollowingUser]
    let followerList : [FollowerUser]
}
struct FollowingUser : Identifiable {
    let id = UUID()
    let firstname : String
    let lastname : String
    let nickname : String
    let image: String
}

struct FollowerUser : Identifiable {
    let id = UUID()
    let firstname : String
    let lastname : String
    let nickname : String
    let image: String
}
struct CommonUser : Identifiable {
    let id = UUID()
    let firstname : String
    let lastname : String
    let nickname : String
    let image: String
}
struct FollowingExampleData{
    static let followingExampleData = [
        FollowingInfoResponse(userName: "aleynaarslankaya", followingCount: 123, followerCount: 233,  followingList:
                                [FollowingUser(firstname: "user1", lastname: "userr", nickname: "us", image: "mangaa"),
                                FollowingUser(firstname: "user2", lastname: "userr", nickname: "us", image: "mangaa"),
                                FollowingUser(firstname: "user3", lastname: "userr", nickname: "us", image: "topWalk"),
                                 FollowingUser(firstname: "user1", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user2", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user3", lastname: "userr", nickname: "us", image: "topWalk"),
                                 FollowingUser(firstname: "user1", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user2", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user3", lastname: "userr", nickname: "us", image: "topWalk"),
                                 FollowingUser(firstname: "user1", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user2", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user3", lastname: "userr", nickname: "us", image: "topWalk"),
                                 FollowingUser(firstname: "user1", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user2", lastname: "userr", nickname: "us", image: "mangaa"),
                                 FollowingUser(firstname: "user3", lastname: "userr", nickname: "us", image: "topWalk")],
                              followerList: [
                                FollowerUser(firstname: "userfoll1", lastname: "userr", nickname: "us", image: "mangaa"),
                                FollowerUser(firstname: "user2foll", lastname: "userr", nickname: "us", image: "mangaa"),
                                FollowerUser(firstname: "user3foll", lastname: "userr", nickname: "us", image: "mangaa")
                             ])
            ]
}

struct FollowerUserList {
    static let followerUserList = [
        FollowerUser(firstname: "melih", lastname: "erdurmus", nickname: "meli", image: "mangaa"),
        FollowerUser(firstname: "adem", lastname: "Akkuş", nickname: "adem", image: "mangaa"),
        FollowerUser(firstname: "melis", lastname: "adıney", nickname: "melis", image: "mangaa")
     ]
}
struct CommonUserList {
    static let commonUserList = [
        CommonUser(firstname: "melih", lastname: "erdurmus", nickname: "meli", image: "mangaa"),
        CommonUser(firstname: "adem", lastname: "Akkuş", nickname: "adem", image: "mangaa"),
        CommonUser(firstname: "melis", lastname: "adıney", nickname: "melis", image: "mangaa")
     ]
}

