//
//  OfferUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.10.2022.
//

import SwiftUI

struct OfferUIView: View {
    @State private var searchableText = ""
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var contactVM: OfferViewModel = OfferViewModel()
    var filteredOffer: [OtherUserProfileResponse] {
        if searchableText.isEmpty || searchableText.count < 2 {
            return contactVM.offer
        } else {
            return contactVM.filteredOffer
        }
    }
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading){
            Text("Yeni Bir Yürüyüş Başlat")
                    .bold()
                    .font(.system(size: 16))
                    .padding(.bottom,4)
                    .padding(.leading, 25)
            Text("Birlikte yürüyüş teklifi gönder ve hedefi birlikte tamamla karşılıklı \ntakip ettiğin insanlarla vakit geçirmenin en eğlenceli yolu!")
                    .font(.system(size: 12))
                    .padding(.leading, 25)
                
                List(filteredOffer, id:\.name){ offer in 
                    OfferRow(photo: offer.photo, userName: offer.userName,name: offer.name)
                }
                
       .listStyle(PlainListStyle())
       .onAppear(perform: {
            UITableView.appearance().contentInset.top = -35
        })
            }
            .navigationTitle("Birlikte Yürü")
            .navigationBarTitleDisplayMode(.inline)
            .font(.system(size: 17))
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                           Button(action: {
                               self.presentationMode.wrappedValue.dismiss()
                           }) {
                               HStack {
                                   Image(systemName: "arrow.left")
                                   Text("Anasayfa")
                               }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                       })
            
            .searchable(text: $searchableText, prompt:"Ara")
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .onChange(of: searchableText) { searchableText in
                contactVM.filteredOffer = contactVM.offer.filter({
                    offer in offer.userName.contains(searchableText)
                } )
            }
        }
    }
}
struct InviteButtonColor {
    static let startColor = Color.init(red: 0.965, green: 0.224, blue: 0.439)
    static let endColor = Color.init(red: 0.992, green: 0.443, blue: 0.439)
    
    static let backgroundGradient = Gradient(colors: [startColor,endColor])
}

struct OfferRow: View {
    var photo : String = "Ellipse"
    var userName : String = "aleyna"
    var name : String = "aleynaarslankaya"
    var body: some View {
        HStack{
            Image(photo)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            VStack(alignment: .leading, spacing:2){
                Text(userName)
                Text(name)
                    .foregroundColor(.secondary)
            }.font(.system(size: 12))
               Spacer()
      
            ZStack{
            LinearGradient(gradient: InviteButtonColor.backgroundGradient, startPoint: .leading, endPoint: .trailing)
                .frame(width: 102, height: 20)
                .cornerRadius(2)
                Text("Davet Et")
                    .font(.system(size: 12))
                    .foregroundColor(Color.white)
            }
            .padding(.trailing)
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 56)
        .cornerRadius(4)
        .padding(.leading,24)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
    }
}

struct OfferUIView_Previews: PreviewProvider {
    static var previews: some View {
        OfferUIView()
    }
}
