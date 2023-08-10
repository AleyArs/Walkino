//
//  NowStepUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 12.10.2022.
//

import SwiftUI

struct NowStepUIView: View {
    var nowWalkList : [NowWalkTogether] = NowWalkTogetherList.one
    var body: some View {
        ForEach(nowWalkList, id:\.state){ nowwalkList in
        VStack(alignment:.leading){
        HStack(spacing:30){
        VStack{
            VStack(spacing:3){
                Text("@\(nowwalkList.user1Name)")
                .font(.system(size: 10))
                Image(nowwalkList.user1Photo)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            }
            VStack(spacing: 2){
            Text("Atılan Adım")
                .font(.system(size: 10))
                Text(String(nowwalkList.user1StepCount))
                .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                .font(.system(size: 12))
                .bold()
            }
        }.padding(.top,9)
        .padding(.leading,9)
            VStack{
                Text("HEDEF")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .bold()
                ZStack{
                    Circle()
                        .stroke(Color.init(red: 0.733, green: 0.78, blue: 0.808),lineWidth: 9)
                        .frame(width: 74, height: 74)
                   
                    HStack(spacing: 2){
                        Text(String(nowwalkList.user1StepCount + nowwalkList.user2StepCount))
                            .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                            .bold()
                        Text("/")
                        Text(String(nowwalkList.stepGoal))
                            .bold()
                    }.font(.system(size: 8))
                    Circle()
                        .trim(from: 0.0, to: CGFloat((CGFloat((nowwalkList.user1StepCount + nowwalkList.user2StepCount))/CGFloat((nowwalkList.stepGoal)))))
                        .stroke(.linearGradient(ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading),lineWidth: 9)
                         .rotationEffect(.init(degrees: -90))
                     .frame(width: 74, height: 74)
                }
                
                    Text("Kalan Süre")
                    .font(.system(size: 10))
                    .padding(.top,1)
                Text(String(convertTime(lastUpdateTime: nowwalkList.lastUpdateTime)))
                    .font(.system(size: 12))
                    .bold()
            }.padding(.top,4)
            VStack{
            VStack(spacing:3){
                Text("@\(nowwalkList.user2Name)")
                .font(.system(size: 10))
                Image(nowwalkList.user2Photo)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            }
                VStack(spacing: 2){
                Text("Atılan Adım")
                    .font(.system(size: 10))
                    Text(String(nowwalkList.user2StepCount))
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                    .font(.system(size: 12))
                    .bold()
                }
            }.padding(.top,9)
              .padding(.trailing,9)
        }
        }
        .frame(
           width:UIScreen.main.bounds.width-24
        )
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
    }.listStyle(PlainListStyle())
        
    }
}

struct NowStepUIView_Previews: PreviewProvider {
    static var previews: some View {
        NowStepUIView()
    }
}

