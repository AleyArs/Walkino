//
//  ChatRowUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.12.2022.
//

import SwiftUI

struct ChatRowUIView: View {
    let chat: Chat
    var body: some View {
        HStack(spacing:9){
            Image(chat.person.imgString)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            ZStack{
                VStack(alignment: .leading, spacing: 2){
                    HStack{
                        Text(chat.person.name)
                            .font(.system(size: 12))
                            .bold()
                        Spacer()
                        Text(chat.messages.last?.date.descriptiveString() ?? "")
                            .font(.system(size: 12))
                    }
                    HStack{
                        Text(chat.messages.last?.text ?? "")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
                Circle()
                    .foregroundColor(chat.hasUnreadMessage ? Color.init(red: 0.965, green: 0.224, blue: 0.49) : .clear)
                    .frame(width: 7, height: 7)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 56)
    }
}

struct ChatRowUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRowUIView(chat: Chat.sampleChat[0])
    }
}
