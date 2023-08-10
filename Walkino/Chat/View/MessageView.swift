//
//  MessageView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 26.12.2022.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    var messageText: String
    var body: some View {
        HStack{
            if isFromCurrentUser{
                Spacer()
                Text(messageText)
                    .padding(12)
                    .background(Color.init(red: 1, green: 0.462, blue: 0.517))
                    .font(.system(size: 12))
                    .clipShape(ChatBubbe(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal )
                    .padding(.leading)
                
            }else{
                HStack(alignment: .bottom){
                    Image("mangaa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(messageText)
                        .padding(12)
                        .background(Color.init(red: 0.973, green: 0.984, blue: 0.982))
                        .font(.system(size: 12))
                        .clipShape(ChatBubbe(isFromCurrentUser: false))
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                Spacer()
                
               
            }
        }
    }
}


