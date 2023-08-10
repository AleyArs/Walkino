//
//  ShareProgressUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.11.2022.
//

import SwiftUI

struct ShareProgressUIView: View {
    var body: some View {
        HStack{
        Image(systemName: "shareplay")
                .foregroundColor(Color.white)
                .font(.system(size: 12))
                .padding(.leading)
        Text("Gelişimini Paylaş")
                .foregroundColor(Color.white)
                .font(.system(size: 16))
                .frame(height: 24)
                .padding(.trailing)
        }.background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
            .cornerRadius(2)
            .frame(width: 183, height: 40)
    }
}

struct ShareProgressUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShareProgressUIView()
    }
}
