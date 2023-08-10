//
//  UserCell.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.12.2022.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing:9){
                Image("mangaa")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 2){
                    
                    Text("aleynaarslankaya")
                        .font(.system(size: 12))
                        .bold()
                    Text("@aliş")
                        .font(.system(size: 12))
                }
                Spacer()
            }
            .foregroundColor(.black)
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 56)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98, opacity: 15))
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
