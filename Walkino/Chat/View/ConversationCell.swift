//
//  ConversationCell.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.12.2022.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        HStack(spacing:9){
            Image("mangaa")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            ZStack{
                VStack(alignment: .leading, spacing: 2){
                    HStack{
                        Text("aleynaarslankaya")
                            .font(.system(size: 12))
                            .bold()
                        Spacer()
                        Text("şimdi")
                            .font(.system(size: 12))
                    }.foregroundColor(.black)
                    HStack{
                        Text("Bugün tekrar konuşalım")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }.foregroundColor(.black)
                }
                Circle()
                    .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                    .frame(width: 7, height: 7)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 56)
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
