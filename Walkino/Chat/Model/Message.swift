//
//  Message.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 27.12.2022.
//

import Foundation

struct ChatMessage: Identifiable{
    let id = NSUUID().uuidString
    let isFomCurrentUser: Bool
    let messageText : String
}
