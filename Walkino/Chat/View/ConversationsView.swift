//
//  ConversationsView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.12.2022.
//

import SwiftUI

struct ConversationsView: View {
    @State private var showNewMessageView = false
    @State private var showChatView = false
    @Environment(\.presentationMode) var presentationMode
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                NavigationLink(
                destination: ChatsView(),
                isActive: $showChatView,
                label: {})
                
                ScrollView{
                    VStack{
                        ForEach((0 ... 10 ), id: \.self) { _ in
                            NavigationLink(
                                destination: ChatsView(),
                                label: {
                                   ConversationCell()
                                    .padding(.top)
                            })}  }
                    
                }
                .navigationTitle(Text("Mesajlar").foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49)))
                .searchable(text: $searchText)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading:
                                        Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Geri")
                    }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                })
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
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
