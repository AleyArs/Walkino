//
//  DuelUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 5.12.2022.
//

import SwiftUI

struct DuelUIView: View {
    var body: some View {
        HStack{
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 150, height: 30)
                    .overlay(
                        Triangle()
                            .fill(Color.red)
                    )
                Text(String(23.32))
                    .font(.system(size: 8))
                    .bold()
                    .foregroundColor(Color.white)
            }
            ZStack(alignment: .trailing){
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 150, height: 30)
                    .overlay(
                        LeadingTriangle()
                            .fill(Color.blue)
                    )
                
                Text(String(23.32))
                    .font(.system(size: 8))
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
    
    }
}
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/1.2, y: 0))
        return path
    }
}


struct LeadingTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX/1.2-rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        return path
    }
}




struct DuelUIView_Previews: PreviewProvider {
    static var previews: some View {
        DuelUIView()
    }
}
