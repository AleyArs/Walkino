//
//  OfferButtonUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.11.2022.
//

import SwiftUI

struct OfferButtonUIView: View {
    var body: some View {
        ZStack{
        LinearGradient(gradient: InviteButtonColor.backgroundGradient, startPoint: .leading, endPoint: .trailing)
            .frame(width: 102, height: 20)
            .cornerRadius(2)
            Text("Davet Et")
                .font(.system(size: 12))
                .foregroundColor(Color.white)
        }
        Text("Davet Edildi")
            .frame(width: 102, height: 20)
            .font(.system(size: 12))
            .foregroundColor(Color.black)
            .overlay(RoundedRectangle(cornerRadius: 2)
                .stroke(Color.black,lineWidth: 2))
    }
}

struct OfferButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        OfferButtonUIView()
    }
}
