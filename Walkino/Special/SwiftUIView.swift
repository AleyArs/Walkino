//
//  SwiftUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.09.2022.
//

import SwiftUI
import Pages
struct SwiftUIView: View {
    var activityList : [ActivityModel] = ActivityModelList.activityList
    @State var selectedTab : Tab = .person
    var body: some View {
        NavigationView{
            VStack {
                NavigationBarView()
              Spacer()
              ScrollView()
                {
                    NavigationLink(destination:
                                    SpecialExpImageUIView()){
                        Text("Etkinlikler ve Duyurular >")
                            .frame(width: 250, height: 45 )
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top,15.93)
                    }
                
                TabView{
                    ForEach(activityList, id:\.sıra){ pastduelList in
                        activity(activityModel: pastduelList)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(width: 327, height: 149)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
                .padding(.bottom,12)
                
        Text("Sana Özel")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 24)
        }
           CategoryUI()
            .padding(.top, -60)
        }
   
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct activity: View {
    let activityModel: ActivityModel
    var color = ColorConstants()
    var body: some View{
        HStack{
            Image(activityModel.photo)
                .frame(width: 160, height: 149)
                .mask(LinearGradient(gradient: Gradient(colors: [Color.white,
            Color.white.opacity(0)]), startPoint: .leading, endPoint: .trailing))
        VStack(spacing: 24){
            Text(activityModel.title)
                .font(.system(size: 20))
                .bold()
                .foregroundStyle(
                    .linearGradient(ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
            VStack(spacing:18){
            HStack{
                Image("three")
                    .frame(width: 24, height: 15)
                Text("\(String(activityModel.userCount)) kişi katılıyor")
                    .bold()
                    .font(.system(size: 16))
                   }
            Text("Ayrıntıları görmek için tıkla")
                .font(.system(size: 10))
            }
        }
        }
        }
    
}
                     /*"\(activityList.userCount) kişi katılıyor*/
