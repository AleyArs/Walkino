//
//  UserListUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 5.12.2022.
//

import SwiftUI

struct UserListUIView: View {
    @State var selected = 1
    var tabBarOption : [FollowingInfoResponse] = FollowingExampleData.followingExampleData
    var body: some View {
        VStack{
            ForEach(tabBarOption,  id:\.userName){region in
                Picker (selection: $selected, label: Text("Picker"), content: {
                    Text("\(region.followerCount) Takip").tag(1)
                    Text("\(region.followingCount) Takipçi").tag(2)
                })
                .pickerStyle(SegmentedPickerStyle())
                if selected == 1 {
                    PersonListUIView()
                }else if selected == 2{
                    FollowerListUIView()
                }
            }
        }.navigationTitle(Text("Aleyna Arslankaya"))
            .navigationBarTitleDisplayMode(.inline)
    }
}



struct UserListUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserListUIView()
    }
}
