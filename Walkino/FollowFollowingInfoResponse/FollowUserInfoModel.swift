//
//  FollowUserInfoModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.01.2023.
//

import Foundation

struct FollowUserInfo : Identifiable {
    let id = UUID()
    let userName: String
    let name: String
    let photo: String
    let follower: Bool
    let following: Bool
    let common: Bool
    let docId: String
}

struct SelfFollowingInfo : Identifiable{
    let id = UUID()
    let followingCount: Int
    let followerCount: Int
    let followerUsers: [FollowUserInfo]
    let followingUsers: [FollowUserInfo]
    let more: Bool
    let nextPageKey: String = ""
}

struct OtherFollowingInfo{
    let followingCount : Int
    let followerCount: Int
    let commonCount: Int
    let commonUsers : [FollowUserInfo]
    let followerUsers: [FollowUserInfo]
    let followingUsers: [FollowUserInfo]
    let more: Bool
    let nextPageKey: String = ""
}

struct SelfFollowingInfoList{
    static let followingExampleData = [
        SelfFollowingInfo(followingCount: 4, followerCount: 3, followerUsers: [FollowUserInfo.init(userName: "followeruser1", name: "user1", photo: "mangaa", follower: true, following: true, common: true, docId: ""),
                    FollowUserInfo.init(userName: "followeruser2", name: "user2", photo: "mangaa", follower: true, following: true, common: true, docId: ""),
                   FollowUserInfo.init(userName: "followeruser3", name: "user3", photo: "mangaa", follower: true, following: true, common: true, docId: "")],
followingUsers: [FollowUserInfo.init(userName: "followinguser1", name: "user1", photo: "mangaa", follower: false, following: true, common: true, docId: ""),
       FollowUserInfo.init(userName: "followinguser2", name: "user2", photo: "mangaa", follower: false, following: false, common: true, docId: ""),
     FollowUserInfo.init(userName: "followinguser3", name: "user3", photo: "mangaa", follower: false, following: false, common: true, docId: ""),
     FollowUserInfo.init(userName: "followinguser4", name: "user4", photo: "mangaa", follower: false, following: true, common: true, docId: "")], more: false)
            ]
}

