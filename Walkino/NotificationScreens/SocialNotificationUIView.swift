//
//  SocialNotificationUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import SwiftUI

struct SocialNotificationUIView: View {
    var body: some View {
        VStack(spacing: 95){
         ZStack{
            Circle()
                 .foregroundColor(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                .frame(width: 178, height: 178)
            Image(systemName: "checkmark")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
         }
            VStack(spacing:24){
            Text("İstek Gönderildi")
                .bold()
                .font(.system(size: 24))
            Text("Birlikte yürüyüş yapabilmek için teklifini gönderdin. Birlikte Yürü alanında istatistikleri takip et.")
                .frame(width: 278, height: 74)
            }
            Text("Tamam")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 311, height: 40)
                .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
             
        }
    }
}

struct SocialNotificationUIView_Previews: PreviewProvider {
    static var previews: some View {
        SocialNotificationUIView()
    }
}
