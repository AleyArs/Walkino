//
//  SeasonTargetUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 18.10.2022.
//

import SwiftUI

struct SeasonTargetUIView: View {
    var percent: CGFloat = 0.9
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Altın Hareket Sezonuna Hoşgeldin!")
                    .bold()
                    .font(.system(size: 16))
                
                Text("Walkino ile gerçekleştirdiğin her aktivitede tecrübe puanı kazan ve seviye atla. Atladığın her seviyede ödüllere ve özel haklara eriş")
                    .frame(
                        width:UIScreen.main.bounds.width-25, height:56)
                    .font(.system(size: 12))
            }
            
            VStack(spacing:8){
                SeasonProgressBar()
                SeasonPieceUIView()
                    . padding(.bottom,24)
            }
            
      VStack(alignment: .leading, spacing: 34){
        Text("Bugüne Kadar Neler Yaptın?")
                .bold()
                .font(.system(size: 16))
                .padding(.leading, 24)
          ScrollView{
              VStack{
                  SeasonsDetailsProgressBar()
                  SeasonsDetailsProgressBar(bar:0.5, goal: 250000, comletedGoal: 126625,name: "Basamak",nameDesc: "Çıkılan Basamak Sayısı" )
                  SeasonsDetailsProgressBar(bar:1, goal: 250000, comletedGoal: 126625,name: "Düello",nameDesc: "Yapılan Düello Sayısı" )
                  SeasonsDetailsProgressBar(bar:0.41, goal: 100, comletedGoal: 41,name: "Birlikte Yürü",nameDesc: "Birlikte Yürüyüş Sayısı" )
                  SeasonsDetailsProgressBar(bar:0.32, goal: 1000000, comletedGoal: 256134,name: "Bağış",nameDesc: "Bağışlanan Adım Sayısı" )
              }
          }
          ShareProgressUIView()
              .frame(
                  width:UIScreen.main.bounds.width-1)
           
            }
            Spacer()
    }
        .navigationTitle(Text("Sezon"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .padding(.top)
            .navigationBarItems(leading:
                           Button(action: {
                               self.presentationMode.wrappedValue.dismiss()
                           }) {
                               HStack {
                                   Image(systemName: "chevron.left")
                                   Text("Anasayfa")
                               }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                       })
  }
}

struct SeasonTargetUIView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonTargetUIView()
    }
}
