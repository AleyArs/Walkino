//
//  GoldenTopBarUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.09.2022.
//

import SwiftUI

struct GoldenTopBarUIView: View {
    var body: some View {
        HStack{
         Image("seasonstep")
                .resizable()
                .frame(width: 13.43,height: 14)
                
        Text("23563")
                .bold()
                .foregroundColor(.init( red: 0.992, green: 0.904, blue: 0.397))
                .frame(height: 38)
        }
        .frame(width: 79, height: 26)
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
        .overlay(RoundedRectangle(cornerRadius: 4)
        .stroke(Color.init(red: 0.992, green: 0.904, blue: 0.397),lineWidth: 2))
        
        
    }
}

struct GoldenTopBarUIView_Previews: PreviewProvider {
    static var previews: some View {
        GoldenTopBarUIView()
    }
}
