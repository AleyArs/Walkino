//
//  PrizeUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 20.09.2022.
//

import SwiftUI

struct PrizeUIView: View {
    var PrizeListPages : [PrizeListPage] = PrizeList.five
    var body: some View {
       
            List(PrizeListPages, id:\.id) { prizelist in
                ZStack{
                    PrizeRowUIView( prizeListPage: prizelist)
                    
                    NavigationLink(destination:{
                        PrizeDetailsUIView(prizeListPage: prizelist)
                    }){
                        EmptyView()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(width:0)
                    .opacity(0)
                }
            }.listStyle(PlainListStyle())
                .environment(\.defaultMinListRowHeight,50)
      
    }
}
struct PrizeRowUIView: View {
    var prizeListPage : PrizeListPage
    var body: some View {
        Image(prizeListPage.mainImage)
            .resizable()
            .frame(width: 327, height: 149)
    }
}


struct PrizeDetailsUIView: View {
    var prizeListPage : PrizeListPage
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Image(prizeListPage.mainImage)
                .resizable()
                .frame(width: 327, height: 149)
                .padding(.leading,24)
                .cornerRadius(4)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
            
            VStack(alignment: .leading){
                Text(prizeListPage.title)
                    .frame(width: 283, height:24)
                    .padding(.leading,24)
                Text("Son Geçerlilik Tarihi: \(prizeListPage.date)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                HStack(spacing: -18){
                    Image("altinb")
                    Text(String(prizeListPage.goldStepp))
                        .padding(.leading,24)
                        .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                        .font(.system(size: 20, weight: .bold, design: .default))
                }
            }
            
            PrizeButtonUIView()
            
            ScrollView{
                Image(prizeListPage.descriptionImg)
                    .resizable()
                    .frame(width: 327, height:369)
            }
        }
        .navigationTitle(Text("Açıklama"))
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

struct PrizeUIView_Previews: PreviewProvider {
    static var previews: some View {
        PrizeUIView()
    }
}
