//
//  PersonListUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 28.09.2022.
//

import SwiftUI

struct PersonListUIView: View {
    var people : [FollowingInfoResponse] = FollowingExampleData.followingExampleData
    @State var isSelected : Bool = false
    @State private var singleSelection: UUID?
    @State private var searchableText = ""
    @StateObject private var contactVM: CommonViewModel = CommonViewModel()
   // @Binding var showChatView : Bool 
    var filteredOffer: [FollowerUser] {
        if searchableText.isEmpty || searchableText.count < 2 {
            return contactVM.offer
        } else {
            return contactVM.filteredOffer
        }
    }
    var body: some View {
        List(selection: $singleSelection) {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ForEach(people, id: \.userName){region in
                        ForEach(region.followingList){sea in
                            HStack{
                                Image(sea.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(60)
                                    .clipShape(Circle())
                                    .shadow(radius: 2)
                                    .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                                VStack(alignment: .leading){
                                    Text("\(sea.firstname)\(sea.lastname)")
                                        .font(.system(size: 12))
                                    Text(sea.nickname)
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                     }.layoutPriority(1)
                                Spacer()
                                Button(action: {
                                    self.isSelected.toggle()
                                }  , label: {
                                    AddButtonUIView()
                                        .padding(.trailing)
                                })
                            }.frame(
                                width:UIScreen.main.bounds.width-24, height: 56
                             )
                                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                                .cornerRadius(4)
                                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
                        }
                    }
                }
            }.padding(.bottom, 18)
            
        }.listStyle(PlainListStyle())
    }
}
struct PersonListUIView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListUIView()
    }
}



