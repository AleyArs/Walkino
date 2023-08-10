//
//  SpecialExpImageUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 5.01.2023.
//

import SwiftUI

struct SpecialExpImageUIView: View {
    let activityList : [ActivityModel] = ActivityModelList.activityList
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            SpecialExpText()
            List(activityList, id:\.sıra){ pastduelList in
                NavigationLink(destination: ActivityDetailsRow(activityModel: pastduelList)){
                    activity(activityModel: pastduelList)
                }
            }.listStyle(PlainListStyle())
        }
        .navigationTitle(Text("Etkinlikler"))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                        GoldenTopBarUIView()
                    }
                }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .padding(.top)
            .navigationBarItems(leading:
                           Button(action: {
                               self.presentationMode.wrappedValue.dismiss()
                           }) {
                               HStack {
                                   Image(systemName: "chevron.left")
                                   Text("Ödüller")
                               }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                       })
    }
}

struct SpecialExpText : View {
    var body: some View{
        VStack(alignment: .leading){
            Text("Sana Özel Etkinliklere Katıl!")
                .bold()
                .font(.system(size: 16))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis id tellus ac ultrices. Aenean commodo")
                .frame(
                    width:UIScreen.main.bounds.width-24, height:36)
                .font(.system(size: 12))
        }
    }
}
struct SpecialExpImageUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialExpImageUIView()
    }
}
