//
//  FollowerListUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.12.2022.
//

import SwiftUI

struct FollowerListUIView: View {
    var people : [FollowingInfoResponse] = FollowingExampleData.followingExampleData
    @State var isSelected : Bool = false
    @State private var singleSelection: UUID?
    var body: some View {
        List(selection: $singleSelection) {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ForEach(people, id: \.userName){ region in
                        ForEach(region.followerList){sea in
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
                            } .frame(
                                    width:UIScreen.main.bounds.width-24, height: 56)
                                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                                .cornerRadius(4)
                                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
                        }
                    }
                }
              }
            }.listStyle(PlainListStyle())
         }
    }

struct FollowListRow: View {
    var followerUser : FollowerUser
    @State var isSelected : Bool = false
    var body: some View{
        HStack{
            Image(followerUser.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(60)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            VStack(alignment: .leading){
                Text("\(followerUser.firstname)\(followerUser.lastname)")
                    .font(.system(size: 12))
                Text(followerUser.nickname)
                    .fontWeight(.light)
                    .font(.system(size: 12))
            }.layoutPriority(1)
            Spacer()
            Button(action: {
                self.isSelected.toggle()
            }  , label: {
                AddButtonUIView()
            })
        }.frame(width:UIScreen.main.bounds.width-24, height: 56)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }
}

struct FollowerListUIView_Previews: PreviewProvider {
    static var previews: some View {
        FollowerListUIView()
    }
}
