//
//  SeasonProgressBarUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 19.10.2022.
//

import SwiftUI

struct SeasonProgressBar: View {
    var SeasonPrize : [SeasonGoal] = SeasonGoalList.seasonGoalList
    var body: some View {
        ForEach(SeasonPrize, id:\.level){
            seasonPrize in
            if seasonPrize.levelPercent != 0 {
                SeasonProgressBarUIView(progress: CGFloat(seasonPrize.levelPercent), goal:seasonPrize.goal,level: seasonPrize.level )
                    .frame(
                        width:UIScreen.main.bounds.width-24, height: 22)
            }
    }
}

struct SeasonProgressBarUIView: View {
    var progress: CGFloat = 0.6
    var goal: Int = 13000
    var level : Int = 7
    var body: some View {
        HStack(spacing:1){
        ZStack{
             RoundedRectangle(cornerRadius: 4)
                .fill(Color.init( red: 0.992, green: 0.904, blue: 0.397))
                .frame(width: 79, height: 26)
            HStack{
            Text("Seviye")
                .font(.system(size: 12))
                .foregroundColor(.white)
            Text(String(level))
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.white)
         }
      }
        GeometryReader{ proxy in
            VStack{
                    HStack{
                        Text("Sonraki Seviye:")
                            .bold()
                            .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                        Text(String(goal))
                    }.font(.system(size: 10))
                  
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width, height: 3)
                            .foregroundColor(Color.black.opacity(0.1))
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width * progress,  height: 3)
                            .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                    }
                }
            .frame(width: 250, height: 22)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
               
            }
            
        }
    }
   
}
}

struct SeasonProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        SeasonProgressBar()
    }
}
