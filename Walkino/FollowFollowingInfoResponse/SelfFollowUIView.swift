//
//  SelfFollowUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.01.2023.
//

import SwiftUI

struct SelfFollowUIView: View {
    var SelfFollowing : [SelfFollowingInfo] = SelfFollowingInfoList.followingExampleData
    var body: some View {
        ForEach(SelfFollowing){ selfUser in
            List(selfUser.followerUsers, id: \.userName){ selfuserDes in
                FollowUserInfoView(followUserInfo: selfuserDes)
            }.listStyle(PlainListStyle())
        }
    }
}

struct FollowUserInfoView: View {
    var followUserInfo: FollowUserInfo
    @State var isSelected : Bool = false
    var body: some View {
        HStack{
            Image(followUserInfo.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(60)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                .padding(.leading,26)
            VStack(alignment: .leading){
                Text(followUserInfo.name)
                    .font(.system(size: 12))
                Text(followUserInfo.userName)
                    .fontWeight(.light)
                    .font(.system(size: 12))
                 }.layoutPriority(1)
            Spacer()
            if followUserInfo.following == false {
                FollowerButton()
                    .padding(.trailing,8)
            } else {
                FollowingButton()
                    .padding(.trailing,8)
            }
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 66
         )
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }
}

struct SelfFollowUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelfFollowUIView()
    }
}
