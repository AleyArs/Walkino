//
//  CircleLevelUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 30.09.2022.
//

import SwiftUI

struct CircleLevelUIView: View {
    var CircleList : [UserProfileResponse] = UserProfileResponseList.one
    var body: some View {
    ScrollView(.horizontal,showsIndicators: true){
    HStack(spacing: 35) {
    ForEach(CircleList, id:\.name) {circlelist in
        ForEach(circlelist.rosette, id:\.sıra){
            circleListt in
            CircleLevelRow(percentageComplete: Float(circleListt.percentageComplete), rosetteImage: circleListt.rosetteImage,rosetteName: circleListt.rosetteName,rosetteDone: circleListt.rosetteDone, rosetteLevel: circleListt.rosetteLevel)
            
        }
    }.onAppear(perform: {
        UITableView.appearance().contentInset.top = -35})
    }
    .frame(
        width:UIScreen.main.bounds.width-24, height: 170)
   
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
         
        }      
}
}

struct CircleLevelRow: View {
    var percentageComplete : Float = 0.5
    var rosetteImage: String = "Ellipse"
    var rosetteName: String = "Voleybol"
    var rosetteDone : Int = 6
    var  rosetteLevel : Int = 12
    var body: some View{
        VStack(spacing: 29){
        VStack(spacing: 10){
            ZStack{
            ZStack{
                Circle()
                    .stroke(Color.init(red: 0.733, green: 0.78, blue: 0.808),lineWidth: 20)
                    .frame(width: 56.97, height: 56.97)
                Circle()
                .trim(from: 0.0, to: CGFloat(percentageComplete))
                .stroke(Color.init(red: 0.992, green: 0.443, blue: 0.439), lineWidth: 20)
                .rotationEffect(.init(degrees: -90))
                .frame(width: 56.97, height: 56.97)
            }
                Image(rosetteImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 47, height: 40)
                    .clipShape(Circle())
                
            }
                         }
                VStack(spacing: 7){
                    Text(rosetteName)
                    .font(.system(size: 12))
        
                        Text(String(rosetteDone))
                        .fontWeight(.light)
                        .font(.system(size: 8))
                    +
                    Text( "/")
                    .fontWeight(.light)
                    .font(.system(size: 8))
                             +
                            Text( String(rosetteLevel))
                            .fontWeight(.light)
                            .font(.system(size: 8))
                }
            
            }
        
    }
}


struct CircleLevelUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLevelUIView()
    }

}


