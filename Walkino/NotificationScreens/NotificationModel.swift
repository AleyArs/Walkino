//
//  NotificationModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 20.12.2022.
//

import Foundation

enum NotificationType : String {
    case duelReceived = "duel"
    case togetherReceived = "together"
    case infoReceived = "info"
    case followReceived = "follow"
}

struct Notification: Hashable {
    let username : String
    let msg : String
    var time : Int
    var photo:String
    let type: NotificationType
}

extension Notification {
    static let sampleChat = [
        Notification(username: "name1", msg: "msg1", time: 20000, photo: "mangaa", type: NotificationType.togetherReceived),
        Notification(username: "name2", msg: "msg2", time: 49999, photo: "mangaa", type: NotificationType.infoReceived),
        Notification(username: "name3", msg: "msg3", time: 60000, photo: "mangaa", type: NotificationType.followReceived),
        Notification(username: "name4", msg: "msg4", time: 59999, photo: "mangaa", type: NotificationType.duelReceived),
        Notification(username: "name5", msg: "msg5", time: 59999, photo: "mangaa", type:  NotificationType.duelReceived)
    ]
}
