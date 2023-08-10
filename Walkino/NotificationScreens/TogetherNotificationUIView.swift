//
//  TogetherNotificationUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.12.2022.
//

import SwiftUI

struct TogetherNotificationUIView: View {
    let notification : [Notification] = Notification.sampleChat
    var body: some View {
        VStack{
            getNotification()
            Spacer()
        }
    }
}
struct inviteNotification: View {
    var photo:String = "mangaa"
    var username : String = "steveab"
    var msg : String = "he offered you a walk together."
    var time : Int = 784657684
    var body: some View{
        VStack{
        HStack{
            Image(photo)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(60)
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            (Text(username).bold() + Text(" \(msg)") + Text(String(time)).foregroundColor(.secondary))
                .font(.system(size: 12))
                .offset(y:-17)
            Spacer()
        }.padding(.leading,24)
            
       HStack(spacing: 12){
                    NotificationButtonUIView()
                    RejectButtonUIView()
    
       }.offset(x:67,y:-19)
            
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 86)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }
}
struct infoNotification: View {
    var photo:String = "mangaa"
    var username : String = "robertt"
    var msg : String = "accepted the offer to walk together."
    var time : Int = 48888
    var body: some View{
        HStack{
            HStack{
            Image(photo)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(60)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                HStack(spacing: 35){
                    (Text(username).bold() + Text(" \(msg)") + Text(String(time)).foregroundColor(.secondary))
                        .font(.system(size: 12))
                        .offset(y:-17)
                }
            }.padding(.leading,23)
            Spacer()
            NotificationİnfoUIView()
                .padding(.trailing,3)
            
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 86)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }
}
struct newFollower: View {
    var photo:String = "mangaa"
    var username : String = "mases"
    var msg : String = "started following you."
    var time : Int = 648545687
    
    var body: some View{
        HStack{
            HStack{
                Image(photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .cornerRadius(60)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                HStack(spacing: 35){
                    (Text(username).bold() + Text(" \(msg)") + Text(String(time)).foregroundColor(.secondary))
                        .font(.system(size: 12))
                        .offset(y:-17)
                }
            }.padding(.leading,23)
            Spacer()
            FollowButtonUIView()
                .padding(.trailing,3)
        
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 86)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }
}

@ViewBuilder
func getNotification() -> some View {
    let notification : [Notification] = Notification.sampleChat
    
    ForEach(notification, id: \.self) { section in
        switch section.type {
        case .togetherReceived:
            inviteNotification(photo: section.photo, username: section.username, msg: section.msg, time:section.time)
        case .infoReceived:
            infoNotification(photo: section.photo, username : section.username,
                             msg: section.msg , time : section.time)
        case .followReceived:
            newFollower(photo: section.photo, username : section.username,
                        msg: section.msg , time : section.time)
        case .duelReceived:
            newFollower(photo: section.photo, username : section.username,
                        msg: section.msg , time : section.time)
     
        }
    }
}

struct TogetherNotificationUIView_Previews: PreviewProvider {
    static var previews: some View {
        TogetherNotificationUIView()
    }
}
