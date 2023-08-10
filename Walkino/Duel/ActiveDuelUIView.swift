//
//  ActiveDuelUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 14.10.2022.
//

import SwiftUI

struct ActiveDuelUIView: View {
    var activeDuelList : [ActiveDuel] = ActiveDuelList.activeDuelList
   
    var body: some View {
        ForEach(activeDuelList, id:\.state){ nowduelList in
            HStack(spacing:20){
            VStack{
            VStack(spacing:3){
                Text("@\(nowduelList.user1Name)")
                .font(.system(size: 10))
                Image(nowduelList.user1Phote)
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
                Text(String(nowduelList.user1StepCount))
                .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                .bold()
            }
            }.padding(.top,12)
        VStack{
            HStack(spacing:6.0){
                Image("aa")
                Image("Vs")
                Image("aaa")
            }
            HStack(spacing:4.8){
                Image("altinb")
                HStack(spacing:2){
                    Text(String(nowduelList.goldAmount))
                        .font(.system(size: 12))
                        .bold()
                        .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                Text("Altın Adım")
                        .font(.system(size: 8))
                        .bold()
                        .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                }
            }
            VStack{
                GeometryReader{ proxy in
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width, height: 9)
                            .foregroundColor(Color.black.opacity(0.1))
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .frame(width: proxy.size.width *
                                   CGFloat(CGFloat((nowduelList.user1StepCount))/(CGFloat((nowduelList.user1StepCount + nowduelList.user2StepCount)) )), height: 9)
                            .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                    }
                }
                
                VStack( spacing:12){
                    Text(String( DifferenceFunction(user1StepCount: nowduelList.user1StepCount, user2StepCount: nowduelList.user2StepCount)))
                        .font(.system(size: 8))
                        .padding(.top,-23)
                    VStack{
                        Text("Kalan Süre")
                            .font(.system(size: 8))
                        Text(String(convertDuelTime(lastUpdateTime: nowduelList.lastUpdateTime)))
                            .font(.system(size: 12))
                    }.padding(.bottom, 3)
                }
            }
        }
            VStack{
            VStack(spacing:3){
                Text("@\(nowduelList.user2Name)")
                .font(.system(size: 10))
                Image(nowduelList.user2Phote)
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
                    Text(String(nowduelList.user2StepCount))
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                    .bold()
                }
                
            }.padding(.top,12)
        
        }.frame(
            width:UIScreen.main.bounds.width-24, height: 149)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
        }.listStyle(PlainListStyle())
    }
    
}

struct ActiveDuelUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveDuelUIView()
    }
}
