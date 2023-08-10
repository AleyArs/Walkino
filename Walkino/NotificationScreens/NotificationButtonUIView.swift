//
//  NotificationButtonUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.12.2022.
//

import SwiftUI

struct NotificationButtonUIView: View {
    var body: some View {
        VStack{
            Text("Kabul Et")
                .frame(width: 91, height: 20)
                .cornerRadius(7)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
                .padding(.trailing,8)
           
        }
    }
}

struct RejectButtonUIView: View {
    var body: some View {
        Text("Reddet")
            .frame(width: 91, height: 20)
            .font(.system(size: 12))
            .foregroundColor(Color.black)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
            .padding(.trailing,8)
    }
}

struct NotificationİnfoUIView: View {
    var body: some View {
        Text("İncele")
            .frame(width: 91, height: 20)
            .cornerRadius(7)
            .font(.system(size: 12))
            .foregroundColor(.white)
            .background(LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
            .padding(.trailing,8)
    }
}
struct FollowButtonUIView: View {
  
    var body: some View {
        Text("Takip Et")
            .frame(width: 91, height: 20)
            .font(.system(size: 12))
            .foregroundColor(.white)
            .cornerRadius(7)
            .background(LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
            .padding(.trailing,8)
    }
}


struct NotificationButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationButtonUIView()
    }
}
