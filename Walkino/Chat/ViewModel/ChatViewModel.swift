//
//  ChatViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 27.12.2022.
//

import Foundation

class ChatViewModel: ObservableObject{
    
    @Published var ChatMessages = [ChatMessage]()
    
    init(){
        ChatMessages = mockMessage
    }
    var mockMessage: [ChatMessage]{
        [
            .init(isFomCurrentUser: true, messageText: "Hey Watsappp man"),
            .init(isFomCurrentUser: false, messageText: "Not much how are you"),
            .init(isFomCurrentUser: true, messageText: "ı'm doing fine.having fun buildingthis app"),
            .init(isFomCurrentUser: true, messageText: "Are you learn a lot?"),
            .init(isFomCurrentUser: false, messageText: "Yeah i am i love this course"),
            .init(isFomCurrentUser: true, messageText: "That's aweome, im glad  bought it "),
            .init(isFomCurrentUser: true, messageText: "Talk toyou later!")
            ]
    }
    
    func sendMessage(_ messageText: String){
        let ChatMessage = ChatMessage(isFomCurrentUser: true, messageText: messageText)
        ChatMessages.append(ChatMessage)
    }
}
