//
//  StepPartView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 26.09.2022.
//

import SwiftUI

struct StepPartView: View {
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        NavigationView{
        VStack(spacing: 0.0) {
                NavigationBarView()
            ScrollView {
            Spacer()
       VStack(spacing:12){
         StepCircularUIView()
        TodayStepUIView()
               Text("Her Gün Şansını Dene")
                   .font(.system(size: 16))
                   .padding(.leading,-170)
          VStack{
            GoldAwardAppendUIView()
            NavigationLink(destination:
                     SeasonTargetUIView()){
                HStack(spacing:96){
                    Text("Altın Hareket Sezonu")
                        .font(.system(size: 16))
                    HStack{
                        Text("Ayrıntıları gör")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text(Image(systemName: "chevron.right"))
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }.frame(
                    width:UIScreen.main.bounds.width-24, height: 24
                 )
            }
            SeasonMainPageUIView()
              VStack(alignment: .leading){
                  Text("Duyurular ve Etkinlikler")
              }.padding(.leading,-150)
           }
        }
    }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        }.navigationBarItems(trailing: Button("LogOut"){
            self.userInfo.isUserAuthenticated = .signedOut
        })
}
}
}

struct StepPartView_Previews: PreviewProvider {
    static var previews: some View {
        StepPartView()
    }
}
