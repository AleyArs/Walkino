//
//  CustomInputView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 26.12.2022.
//

import SwiftUI

struct CustomInputView: View {
    @Binding var text: String
    
    var action: ()  -> Void
    
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
            HStack{
                TextField("Message...", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .frame(minHeight: 30)
                
                Button(action: action , label: {
                    Text("Send")
                        .bold()
                        .foregroundColor(.black)
                    
                })
            }.padding(.bottom,8)
             .padding(.horizontal)
        }
    }
}


