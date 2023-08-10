//
//  ChatView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 19.12.2022.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var viewModel: ChatsViewModel
    let chat : Chat
    @State private var text = ""
    @FocusState private var isFocused
    @State private var messageIDToScroll: UUID?
    
    var body: some View {
            VStack(spacing:0){
                GeometryReader{ reader in
                    ScrollView{
                        ScrollViewReader{ scrollReader in
                            getMessagesView(viewWidth: reader.size.width)
                                .padding(.horizontal)
                                .onChange(of: messageIDToScroll){_ in
                                    if let messageID = messageIDToScroll{
                                        scrollTo(messageID: messageID, shoulAnimate: true, scrollReader: scrollReader)
                                    }
                                }
                                .onAppear{
                                    if let messageID = chat.messages.last?.id{
                                        scrollTo(messageID: messageID,anchor: .bottom ,shoulAnimate: false, scrollReader: scrollReader)
                                    }
                                }
                        }
                    }
                }
                .padding(.bottom, 5)
                
                toolbarView()
            }
            .padding(.top,1)
            .navigationBarItems(leading: navBarLeadingBtn)
            .onAppear{
                viewModel.markAsUnread(false, chat: chat)
            }
        }
    
    
    var navBarLeadingBtn: some View {
        Button(action: {}){
            HStack{
                Image(chat.person.imgString)
                    .resizable()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                Text(chat.person.name)
                    .bold()
            }
            .foregroundColor(.black)
        }
    }
    
    func scrollTo(messageID: UUID, anchor: UnitPoint? = nil, shoulAnimate: Bool, scrollReader: ScrollViewProxy){
        DispatchQueue.main.async{
            withAnimation(shoulAnimate ? Animation.easeIn : nil){
                scrollReader.scrollTo(messageID, anchor: anchor)
            }
        }
    }
    
    func toolbarView() -> some View {
        VStack{
            let height: CGFloat = 37
            HStack{
                TextField("Message...", text: $text)
                    .padding(.horizontal,10)
                    .frame(height: height)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
                    .focused($isFocused)
                
                Button(action: sendMessage){
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .frame(width: height, height: height)
                        .background(
                            Circle()
                                .foregroundColor(text.isEmpty ? .gray : Color.init(red: 1, green: 0.462, blue: 0.517)))
                }
                .disabled(text.isEmpty)
            }
            .frame(height: height)
        }
        .padding(.vertical)
        .padding(.horizontal)
        .background(.thickMaterial)
    }
    
    func sendMessage() {
        if let message = viewModel.sendMessage(text, in: chat){
            text = ""
            messageIDToScroll = message.id
        }
    }
    
    let columns = [GridItem(.flexible(minimum: 10))]
    func getMessagesView(viewWidth: CGFloat) -> some View {
        LazyVGrid(columns: columns, spacing: 0, pinnedViews: [.sectionHeaders]){
            let sectionMessages = viewModel.getSectionMessages(for: chat)
            ForEach(sectionMessages.indices, id:\.self ){ sectionIndex in
                let messages = sectionMessages[sectionIndex]
                Section(header: sectionHeader(firstMessage: messages.first!)){
                    ForEach(messages){ message in
                        let isReceived = message.type == .Received
                        HStack {
                            ZStack{
                                Text(message.text)
                                    .foregroundColor(isReceived ? Color.black : Color.white)
                                    .padding(.horizontal)
                                    .padding(.vertical, 12)
                                    .background(isReceived ? Color.init(red: 0.951, green: 0.969, blue: 0.983).opacity(0.2) : Color.init(red: 1, green: 0.462, blue: 0.517).opacity(0.9))
                                    .cornerRadius(13)
                            }
                            .frame(width: viewWidth * 0.7, alignment: isReceived ? .leading : .trailing)
                            .padding(.vertical)
                            
                        }.frame(maxWidth: .infinity, alignment: isReceived ? .leading : .trailing)
                            .id(message.id)
                    }
                }
            }
        }
    }
    func sectionHeader(firstMessage message:Message) -> some View {
        ZStack{
            Text(message.date.descriptiveString(dateStyle: .medium))
                .foregroundColor(.black)
                .font(.system(size: 12, weight: .regular))
                .frame(width: 120)
                .padding(.vertical, 5)
                .background(Capsule().foregroundColor(Color.init(red: 0.973, green: 0.984, blue: 0.982)))
        }
        .padding(.vertical,5)
        .frame(maxWidth: .infinity)
    }
    
}
    
    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                ChatView( chat: Chat.sampleChat[1])
                    .environmentObject(ChatsViewModel())
            }
        }
    }

