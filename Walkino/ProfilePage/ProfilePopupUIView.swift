//
//  ProfilePopupUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 30.11.2022.
//

import SwiftUI

struct ProfilePopupUIView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black
                .opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    isShowing = false
                }
            VStack{
                Text("Şifre Değiştir")
                    .padding()
                Text("Çıkış Yap")
                    .padding()  
            }
            
            .frame(height: 150)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
       
    
    }
}

struct ProfilePopupUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}
