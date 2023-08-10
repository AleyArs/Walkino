//
//  FollowFollowingUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.01.2023.
//

import SwiftUI

struct FollowFollowingUIView: View {
    
    var body: some View {
        Home()
    }
}
struct Home : View {
    @State var index = 1
    @State var offset : CGFloat = UIScreen.main.bounds.width
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(spacing: 0){
            AppBar(index: self.$index , offset: self.$offset)
            GeometryReader { g in
                HStack(spacing: 0){
                    SelfFollowingUIView()
                        .frame(width: g.frame(in: .global).width)
                    SelfFollowUIView()
                        .frame(width: g.frame(in: .global).width)
                }
                .offset(x: self.offset)
                .highPriorityGesture(DragGesture()
                    .onEnded({ value in
                        if value.translation.width > 50 {
                            self.changeView(left: false)
                        }
                        if -value.translation.width > 50 {
                            self.changeView(left: true)
                        }
                    }))
            }
        }
        
        .animation(.default)
    }
    func changeView(left : Bool ){
        if left {
            if self.index != 2 {
                self.index += 1
            }
        }
        else{
            if self.index != 1 {
                self.index -= 1
            }
        }
        if self.index == 1{
            self.offset = 0
        }
        else if self.index == 2 {
            self.offset = -self.width
        }
    }
}

struct AppBar : View {
    @Binding var index: Int
    @Binding var offset: CGFloat
    var width = UIScreen.main.bounds.width
    var SelfFollowing : [SelfFollowingInfo] = SelfFollowingInfoList.followingExampleData
    var body: some View {
        ForEach(SelfFollowing) { follow in
            HStack{
                Button(action:{
                    self.index = 1
                    self.offset = 0
                }){
                    VStack{
                        Text("\(follow.followingCount) Takipçi")
                            .foregroundColor(self.index == 1 ? .black : Color.secondary)
                        Capsule()
                            .fill(self.index == 1 ? .black : Color.secondary)
                            .frame(height: 2)
                    }
                }
                Button(action:{
                    self.index = 2
                    self.offset = -self.width
                }){
                    VStack{
                        Text("\(follow.followerCount) Takip")
                            .foregroundColor(self.index == 2 ? .black : Color.secondary)
                        Capsule()
                            .fill(self.index == 2 ? .black : Color.secondary)
                            .frame(height: 2)
                    }
                }
            }
        }
    }
}

struct FollowFollowingUIView_Previews: PreviewProvider {
    static var previews: some View {
        FollowFollowingUIView()
    }
}
