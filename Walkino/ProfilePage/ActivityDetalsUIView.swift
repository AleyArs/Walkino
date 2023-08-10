//
//  ActivityDetalsUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 9.12.2022.
//

import SwiftUI

struct ActivityDetalsUIView: View {
    var CircleList : [UserProfileResponse] = UserProfileResponseList.one
    @State var selectedTab : Tab = .person
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ForEach(CircleList, id:\.name) { pastduelList in
                ForEach(pastduelList.activities, id:\.sıra){aa in
                    ActivityDetailsRow(activityModel: aa)
                    
                }
            }
        }
    }
}
struct ActivityDetailsRow: View{
    @State var currentTab: Int = 0
    @State private var selectedView = 0
    private let pickerOptions = ["Etkinlik Hakkında", "Sıralama"]
    let activityModel: ActivityModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Image(activityModel.photo)
                .resizable()
                .scaledToFill()
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 149
                )
                .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
                .cornerRadius(4)
                
            VStack(alignment: .leading){
                HStack(spacing: 87){
                    VStack(alignment: .leading){
                        Text(activityModel.title)
                            .bold()
                        Text(activityModel.activityDate)
                            .foregroundColor(.secondary)
                        
                    }.font(.system(size:12 ))
                    NavigationLink(destination: List(activityModel.TotalUser, id: \.firstname){
                        user in
                        EventsTotalUser(eventTotalUser: user)
                    }.listStyle(PlainListStyle())){
                        Spacer()
                        ZStack{
                            ZStack{
                                ZStack{
                                    Image("Ellipse")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 33, height: 33)
                                        .clipShape(Circle())
                                        .offset(x: -40)
                                    Image("Rectangle")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 33, height: 33)
                                        .clipShape(Circle())
                                }
                                Image("maj")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 33, height: 33)
                                    .clipShape(Circle())
                                    .offset(x: -20)
                                Text("+")
                                    .offset(x:-30, y:15)
                                    .glowBorder(color: .white, lineWith: 5)
                                Text(String(activityModel.userCount))
                                    .bold()
                                    .offset(x:-20, y:15)
                                    .glowBorder(color: .white, lineWith: 5)
                            }
                            Text("kişi katılıyor")
                                .font(.system(size: 10))
                                .foregroundColor(Color.secondary)
                                .offset(x:-20, y:30)
                        }.padding(.trailing,21)
                    }
                }.padding(.leading,24)
                HStack{
                    Image("altinb")
                    Text("120")
                        .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                        .font(.system(size: 20, weight: .bold, design: .default))
                }.padding(.leading,24)
                ActivityButton()
                    .padding(.leading,24)
                    .padding(.trailing,24)
            }
            Picker(selection: $selectedView, label: Text("")){
                ForEach(0..<pickerOptions.count) {
                    Text(self.pickerOptions[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        if selectedView == 0
                        {
                            Image(activityModel.desImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 327, height: 369)
                        }
                        else if selectedView == 1
                        {
                            ForEach(activityModel.ActivitySort, id: \.order){
                                sea in
                                EventsSort(eventSort: sea)
                            }
                        }
                    }
                }
                .frame(width: geometry.size.width)
            }
        }.navigationTitle(Text("Açıklama"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                            GoldenTopBarUIView()
                        }
                    }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                           Button(action: {
                               self.presentationMode.wrappedValue.dismiss()
                           }) {
                               HStack {
                                   Image(systemName: "chevron.backward")
                                   Text("Sana Özel")
                               }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                       })
    }
}

struct ActivityDetalsUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetalsUIView()
    }
}
