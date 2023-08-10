//
//  ChatsView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.12.2022.
//

import SwiftUI

struct ChatsView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = ChatViewModel()
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(viewModel.ChatMessages){ message in
                        MessageView(isFromCurrentUser: message.isFomCurrentUser, messageText: message.messageText)
                    }
                }
            }
            CustomInputView(text: $messageText, action: sendMessage)
        }
        .padding(.top,1)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: navBarLeadingBtn)
        .padding(.vertical)
    }
    func sendMessage(){
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}
var navBarLeadingBtn: some View {
    Button(action: {}){
        HStack{
            Image("mangaa")
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("Aleyna Arslankaya")
                    .bold()
                    .font(.system(size: 16))
                    
                Text("@aleynaarslankaya")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
            }
               
        }
        .foregroundColor(.black)
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
