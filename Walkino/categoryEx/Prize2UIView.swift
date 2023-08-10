//
//  Prize2UIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import SwiftUI


struct Prize2UIView: View {
    var body: some View {
        DonationPart()
    }
}
struct DonationPart : View {
    var color = ColorConstants()
    var Prize2ListPages : [Prize2ListPage] = Prize2List.five
    var body: some View {
      
            List(Prize2ListPages, id:\.sıra) { prize2list in
                ZStack{
                    DonationRowPart( Prize2ListPages: prize2list)
                    NavigationLink(destination:{
                        DetailsView(Prize2ListPages: prize2list)
                    }){
                        EmptyView()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(width:0)
                    .opacity(0)
                    
                }
            }   .listStyle(PlainListStyle())
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                .statusBar(hidden: true)
    }
}
struct DonationRowPart : View {
    var color = ColorConstants()
    var Prize2ListPages : Prize2ListPage
    var body: some View {
        VStack(alignment: .leading, spacing:8){
            Image(Prize2ListPages.mainImage)
                .resizable()
                .frame(width: 327, height: 76)
            Text(Prize2ListPages.title)
                .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                .bold()
                .font(.system(size: 12))
            HStack(alignment:.firstTextBaseline, spacing: 99){
                VStack(alignment: .leading ,spacing:3){
                VStack(alignment: .leading){
                    Text("Toplanan Altın Adım")
                        .font(.system(size: 8))
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(String(Prize2ListPages.sumStep))
                        .font(.system(size: 10))
                        .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                        .bold()
                }
                    GeometryReader{ proxy in
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: 313, height: 7)
                            .foregroundColor(Color.black.opacity(0.1))
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: 313 * CGFloat(Prize2ListPages.percent),  height: 7)
                            .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                    }
                    Text("% \(String(format: "%.0f", Prize2ListPages.percent * 100))")

                        .font(.system(size: 8))
                        .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                        .bold()
                }
                VStack(alignment:.trailing){
                    Text("Hedeflenen Altın Adım")
                        .font(.system(size: 8))
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(String(Prize2ListPages.goal))
                        .font(.system(size: 10))
                        .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                        .bold()
                }
            }
            
        }.frame(width: 327, height: 149)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
    }
}
struct DetailsView: View {
    let Prize2ListPages : Prize2ListPage
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing:8){
            DonationRowPart(Prize2ListPages: Prize2ListPages)
                VStack{
                    DetailsButton()
                    GeometryReader { geometry in
                        ScrollView {
                            Image(Prize2ListPages.descriptionImg)
                                .resizable()
                                .scaledToFit()
                                .frame( height: 149)
                                .padding(.leading,24)
                                .padding(.trailing,24)
                        }
                    }
                }
            Spacer()
                
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

struct DetailsButton: View {
    var body: some View{
        VStack{
            Text("Bağış Yap")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .foregroundColor(.white)
                .background(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                .cornerRadius(7)
            
            Text("Websitesine Git")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(7)
        }
    }
}


struct Prize2UIView_Previews: PreviewProvider {
    static var previews: some View {
        Prize2UIView()
    }
}
