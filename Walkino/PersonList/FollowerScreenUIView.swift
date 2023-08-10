//
//  FollowerScreenUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 23.11.2022.
//

import SwiftUI
import UIKit


/*struct FollowerUI: View {
    @State var index = 1
    @State var offset : CGFloat = UIScreen.main.bounds.width
    var width = UIScreen.main.bounds.width

    var body: some View {
        VStack(spacing:0){
            FollowerScreenUIView( index: self.$index, offset: self.$offset)
            GeometryReader{ g in
                HStack(spacing:0){
                    PersonListUIView()
                        .frame(width: g.frame(in: .global).width)
                    SortingListUIView()
                        .frame(width: g.frame(in: .global).width)
                    TopSortingUIView()
                        .frame(width: g.frame(in: .global).width)
                  
                }
                .offset(x: self.offset)
                .highPriorityGesture(DragGesture()
                    .onEnded({ (value) in
                        if value.translation.width > 50 {
                            print("right")
                            self.changeView(left: false)
                        }
                        if -value.translation.width > 50 {
                            print("left")
                            self.changeView(left: true)
                        }
                        
                    }))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    func changeView(left: Bool ) {
        if left{
            if self.index != 3 {
                self.index += 1
            }
        } else {
            if self.index != 0 {
                self.index -= 1
                
            }
        }
        if self.index == 1 {
            self.offset = self.width
        }
        else if self.index == 2 {
            self.offset = 0
        }
        else {
            self.offset = -self.width
        }
    }
}

struct FollowerScreenUIView: View {

    var tabBarOption : [FollowingInfoResponse] = FollowingExampleData.followingExampleData
    @Binding var index : Int
    @Binding var offset: CGFloat
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, content:{
            ForEach(tabBarOption , id:\.userName){region in
                HStack(spacing:24){
                    Button(action:{
                        self.index = 1
                        self.offset = 0
                    }){
                        VStack(spacing: 2){
                            Text("\(String(region.followerCount)) Takip")
                            .foregroundColor(self.index == 1 ? .black: Color.init(red: 0.733, green: 0.78, blue: 0.808).opacity(0.7))
                            Capsule()
                                .fill(self.index == 1 ? Color.black : Color.init(red: 0.733, green: 0.78, blue: 0.808).opacity(0.7))
                                .frame(height: 3)
                        }
                    }
                    Button(action:{
                        self.index = 2
                        self.offset = -self.width
                    }){
                VStack(spacing: 2){
                    Text("\(String(region.followingCount)) Takipçi")
                            .foregroundColor(self.index == 2 ? .black: Color.init(red: 0.733, green: 0.78, blue: 0.808).opacity(0.7))
                    Capsule()
                        .fill(self.index == 2 ? Color.black : Color.init(red: 0.733, green: 0.78, blue: 0.808).opacity(0.7))
                        .frame(height: 3)
                   
                        }
                    }
                }
               
                .padding(.horizontal)
                .padding(.bottom, 8)
                .background(Color.white)
            }
        })
     }
    }

struct FollowerUI_Previews: PreviewProvider {
    static var previews: some View {
        FollowerUI()
    }
}
*/

