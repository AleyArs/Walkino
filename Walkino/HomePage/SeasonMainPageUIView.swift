//
//  SeasonMainPageUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.11.2022.
//

import SwiftUI

struct SeasonMainPageUIView: View {
    var SeasonPrize : [SeasonGoal] = SeasonGoalList.seasonGoalList
    var body: some View {
        VStack(alignment:.leading){
            ForEach(SeasonPrize, id:\.level){
                seasonPrize in
                if seasonPrize.levelPercent != 0  &&  seasonPrize.levelPercent != 1 {
                    MoveSeasonStarted(level: seasonPrize.level, nowPoint: seasonPrize.nowPoint, levelPoint:seasonPrize.levelPoint, levelPercent: CGFloat(seasonPrize.levelPercent),
                                      lastUpdateTime: seasonPrize.lastUpdateTime)
                }
            }
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 91  )
    }
}
struct MoveSeasonStart: View {
    var body: some View{
        VStack{
           Text("Altın Hareket Sezonuna Başla!")
                .font(.system(size: 16))
        }.frame(width: 329, height: 91)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
    }
}

struct MoveSeasonStarted: View {
    var color = ColorConstants()
    var level :  Int = 5
    var nowPoint : Int = 123
    var levelPoint : Int = 136
    var levelPercent : CGFloat = 0.5
    var lastUpdateTime : Int = 4800000
    var body: some View{
    VStack{
    HStack(spacing:23){
        VStack{
        ZStack{
            Circle()
                .stroke(Color.init(red: 0.733, green: 0.78, blue: 0.808),lineWidth: 9)
                .frame(width: 74, height: 74)
            
            VStack{
                Text(String(level))
                    .bold()
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                Text("Seviye")
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
            }.font(.system(size: 12))
            .frame(height: 36)
            Circle()
            .trim(from: 0.0, to: levelPercent)
            .stroke(.linearGradient(ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading),lineWidth: 9)
             .rotationEffect(.init(degrees: -90))
             .frame(width: 74, height: 74)
            
        }
                (Text(String(nowPoint)) + Text("TP"))
                    .font(.system(size: 8))
                    .bold()
        }
            
            VStack(alignment:.leading,spacing: 4){
                Text("Bir sonraki seviye için,")
                Text(String(levelPoint)).bold() + Text(" Tecrübe Puanı gerekiyor.")
                (Text("Sezonun Bitişine ") + Text(String(convertTime(lastUpdateTime: lastUpdateTime))))
                    .font(.system(size: 10))
                    .font(.caption)
                    .foregroundColor(.gray)
            }.font(.system(size: 12))
        }.frame(
            width:UIScreen.main.bounds.width-34)
        
        }
    .frame(
        width:UIScreen.main.bounds.width-24, height: 100)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
           
        
    }
}

struct SeasonMainPageUIView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonMainPageUIView()
    }
}
