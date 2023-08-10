//
//  Priza3UIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import SwiftUI

struct Priza3UIView: View {
    var Prize3ListPages : [Prize3ListPage] = Prize3List.five
    var body: some View {
            List(Prize3ListPages, id:\.sıra) { prizelist in
                ZStack{
                    Prize3RowUIView( prizeListPage: prizelist)
                    NavigationLink(destination:{
                        Prize3DetailsUIView(prizeListPage: prizelist)
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

struct Prize3RowUIView: View {
    var prizeListPage : Prize3ListPage
    var body: some View {
        Image(prizeListPage.mainImage)
            .resizable()
            .frame(
                width:UIScreen.main.bounds.width-24, height: 149)
    }
}

struct Prize3DetailsUIView: View {
    var prizeListPage : Prize3ListPage
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Image(prizeListPage.mainImage)
                .resizable()
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 149)
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
                HStack{
                    Image("altinb")
                    Text(String(prizeListPage.goldStepp))
                        .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                        .font(.system(size: 20, weight: .bold, design: .default))
                }
            }.frame(
                width:UIScreen.main.bounds.width-24)
            
            PrizeButtonUIView()
            
            ScrollView{
                VStack{
                    Image(prizeListPage.descriptionImg)
                        .resizable()
                        .frame(
                            width:UIScreen.main.bounds.width-24, height: 369)
                }
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

struct Priza3UIView_Previews: PreviewProvider {
    static var previews: some View {
        Priza3UIView()
    }
}
