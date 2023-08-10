//
//  NewMessageView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.12.2022.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var showChatView: Bool
    @Environment(\.presentationMode) var mode
    @State private var isEditing = false
    @State private var searchText = ""
    
    var body: some View {
       
        NavigationView{
            ScrollView{
                /*SearchBar(text: $searchText, isEditing: $isEditing)
                 .onTapGesture { isEditing.toggle()}
                 .padding()*/
                VStack{
                    ForEach((0 ... 10 ), id: \.self) { _ in
                        Button(action: {
                            showChatView.toggle()
                            mode.wrappedValue.dismiss()
                        }
                               , label: {
                            UserCell()
                        })
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(showChatView: .constant(true))
    }
}
