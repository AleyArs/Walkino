//
//  ChatMainUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.12.2022.
//

import SwiftUI

struct ChatMainUIView: View {
    
    @StateObject var viewModel = ChatsViewModel()
    @State private var query = ""
    @State private var showNewMessageView = false
    @State private var showChatView = false
    @State private var searchText = ""
   
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            List{
                    ForEach(viewModel.chats){chat in
                        ZStack{
                            ChatRowUIView(chat: chat)
                            NavigationLink(destination:{
                                ChatView(chat: chat)
                                    .environmentObject(viewModel)
                                    
                            }){
                                EmptyView()
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width:0)
                            .opacity(0)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            Button(action:{
                                viewModel.markAsUnread(!chat.hasUnreadMessage, chat: chat)
                            }){
                                if chat.hasUnreadMessage {
                                    Label("Read", systemImage: "text.bubble")
                                } else {
                                    Label("Unread", systemImage: "circle.fill")
                                }
                            }
                            .tint(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                        }
                                            }
                }
                .listStyle(PlainListStyle())
                .searchable(text: $query)
                .navigationBarTitle("Mesajlar", displayMode: .inline)
                .clipped()
                .navigationBarItems(trailing: navBarTrailingBtn)
            Button(action: {
                showNewMessageView.toggle()
            },label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24,height: 24)
                    .padding()
            })
            .background(Color.init(red: 0.965, green: 0.224, blue: 0.49))
            .foregroundColor(.white)
            .clipShape(Circle())
            .sheet(isPresented: $showNewMessageView) {
                NewMessageView(showChatView: $showChatView)}
            
        }
    }
}

var navBarTrailingBtn: some View {
    Button(action: {}){
        HStack{
            Text("Oluştur")
                .font(.system(size: 17))
                .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
        }
        .foregroundColor(.black)
    }
}

struct ChatMainUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChatMainUIView()
    }
}
