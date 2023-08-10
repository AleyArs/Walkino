//
//  AddButtonUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 28.09.2022.
//

import SwiftUI

struct AddButtonUIView: View {
    @State var isSelected : Bool = true
    var SelfFollowing : [SelfFollowingInfo] = SelfFollowingInfoList.followingExampleData
    var color = ColorConstants()
    var body: some View {
                Text("Takip Et")
                    .frame(width: 102, height: 20)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .cornerRadius(7)
                    .background(LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
        
    }
}

struct FollowingButton: View {
    var body: some View{
        Text("Takiptesin")
            .frame(width: 102, height: 20)
            .font(.system(size: 12))
            .foregroundColor(Color.black)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke((Color.black),lineWidth: 1))
    }
}

struct FollowerButton: View{
    var body: some View{
        Text("Takip Et")
            .frame(width: 102, height: 20)
            .font(.system(size: 12))
            .foregroundColor(.white)
            .cornerRadius(7)
            .background(LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
    }
}

struct AddButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonUIView(isSelected: true)
            .previewLayout(.sizeThatFits)
        
    }
}
