//
//  SeasonsDetailsProgressBar.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 2.01.2023.
//

import SwiftUI

struct SeasonsDetailsProgressBar: View {
    var bar : Float = 0.6
    var goal : Int = 5000000
    var comletedGoal : Int = 3214629
    var name : String = "Step"
    var nameDesc : String = "Total Steps Taken"
    
    var body: some View {
        GeometryReader{ proxy in
            HStack(spacing: 0){
                Text(name)
                    .bold()
                    .font(.system(size: 12))
                    .frame(width: 64, alignment: .leading)
                    .padding(.leading, 24)
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Text(nameDesc)
                            .font(.system(size: 10))
                        Spacer()
                        if bar >= 1 {
                         Button(action: {
                             
                         }) {
                             Text("Ödülü Al")
                                 .frame(width: 76, height: 14)
                                 .font(.system(size: 12))
                                 .foregroundColor(.white)
                                 .background(LinearGradient(gradient: ColorGoldConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
                                 .cornerRadius(4)
                                 .padding(.trailing, 24)
                         }
                            
                        } else {
                            Text("\(comletedGoal) / \(goal) ")
                                .font(.system(size: 10))
                                .padding(.trailing, 24)
                        }
                        
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width - 113, height: 4)
                            .foregroundColor(Color.black.opacity(0.1))
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: (proxy.size.width - 113) * CGFloat(bar),  height: 4)
                            .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                    }
                }
            }
         
        }
        .padding()
        .frame(height: 65)
    }
}

struct GetTheReward: View {
    var bar : Float = 0.5
    var body: some View{
        GeometryReader{ proxy in
            HStack(spacing: 22){
                Text("Step")
                    .bold()
                    .font(.system(size: 12))
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Text("Total steps taken")
                            .font(.system(size: 10))
                        Spacer()
                        Text("3.214.629 / 5.000.0000")
                            .font(.system(size: 10))
                        
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width - 48, height: 4)
                            .foregroundColor(Color.black.opacity(0.1))
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: (proxy.size.width - 48) * CGFloat(bar),  height: 4)
                            .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                       
                    }
                }
            }
            .padding(.leading, 25)
            .padding(.trailing, 25)
        }
    }
}
struct SeasonsDetailsProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        SeasonsDetailsProgressBar()
    }
}
