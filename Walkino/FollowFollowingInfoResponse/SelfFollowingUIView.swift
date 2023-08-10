//
//  SelfFollowingUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.01.2023.
//

import SwiftUI

struct SelfFollowingUIView: View {
    var SelfFollowing : [SelfFollowingInfo] = SelfFollowingInfoList.followingExampleData
    var body: some View {
            ForEach(SelfFollowing){ selfUser in
                List(selfUser.followingUsers, id: \.userName){ selfuserDes in
                    FollowUserInfoView(followUserInfo: selfuserDes)
                }.listStyle(PlainListStyle())
            }
    }
}

struct SelfFollowingUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelfFollowingUIView()
    }
}
