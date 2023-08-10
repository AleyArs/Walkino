//
//  ChatModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.12.2022.
//

import Foundation

struct Chat: Identifiable {
    var id : UUID { person.id }
    let person : Person
    var messages : [Message]
    var hasUnreadMessage = false
}
 
struct Person: Identifiable {
    let id = UUID()
    let name : String
    let imgString : String
}

struct Message : Identifiable {
    enum MessageType {
        case Sent,Received
    } 
    let id = UUID()
    let date : Date
    let text : String
    let type : MessageType
    init(_ text: String, type: MessageType, date: Date){
        self.date = date
        self.type = type
        self.text = text
    }
    init (_ text: String, type: MessageType){
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    static let sampleChat = [
    Chat(person: Person(name: "Hakim", imgString: "Rectangle"), messages: [
        Message("Hey Hakim!", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Bir soru soracaktım", type: .Sent,date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Yardımına ihtiyacım var", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Bir soru soracaktım", type: .Sent,date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Nasıl yardımcı olabilirim", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("dinliyorum", type: .Received,date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("Dinlemekle olmuyor", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("anlaman lazım", type: .Sent ,date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("This joke is soo old hjsdgffj", type: .Received, date: Date())
    ],hasUnreadMessage: true ),
    Chat(person: Person(name: "aleynaarslankaya", imgString: "Ellipse"), messages: [
        Message("Hey Aliş!", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Naber", type: .Sent,date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("napıyosun", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Duydun mu durumları", type: .Sent,date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Ne oldu yav ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Dünya dönüyor", type: .Received,date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("sen duruyorsun", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("durma", type: .Sent ,date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("yaaa sorma ya olaylar karıştı ", type: .Received, date: Date())
    ]),
    Chat(person: Person(name: "Romesh", imgString: "Ellipse"), messages: [
        Message("Hey Romesh, how is your dev journey going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 4)),
        Message("thank for asking flo", type: .Received,date: Date(timeIntervalSinceNow: -86400 * 4)),
        Message("Başarılar", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
      
    ])
    ]
}
