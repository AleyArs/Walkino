//
//  PastDuelUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 14.10.2022.
//

import SwiftUI

struct PastDuelUIView : View{
    var pastDuelList : [PastDuel] = PastDuelList.pastDuelList
    var body: some View {
        VStack(alignment: .leading){
            Text("Geçmiş Karşılaşmaların")
                .bold()
                .padding(.leading,24)
                .font(.system(size: 16))
            List(pastDuelList, id:\.id){ pastduelList in
                if pastduelList.situation == true {
                    PastDuelVictoryUIView(situation:pastduelList.situation,user1Name: pastduelList.user1Name, user2Name: pastduelList.user2Name, user1StepCount: pastduelList.user1StepCount, user2StepCount: pastduelList.user2StepCount, user1Phote: pastduelList.user1Phote, user2Phote: pastduelList.user2Phote, goldAmmount: pastduelList.goldAmount)
                }else {
                    PastDuelLostUIView(situation:pastduelList.situation,user1Name: pastduelList.user1Name, user2Name: pastduelList.user2Name, user1StepCount: pastduelList.user1StepCount, user2StepCount: pastduelList.user2StepCount, user1Phote: pastduelList.user1Phote, user2Phote: pastduelList.user2Phote, goldAmmount: pastduelList.goldAmount)
                }
            }.listStyle(PlainListStyle())
        }
    }
}
struct PastDuelVictoryUIView: View {
    var situation : Bool = true
    var user1Name : String = "meliherdurmus"
    var user2Name : String = "aleynaarslankaya"
    var user1StepCount : Int = 5000
    var user2StepCount : Int = 3000
    var user1Phote : String = "mangaa"
    var user2Phote : String = "mangaa"
    var goldAmmount : Int = 25
    var body: some View {
        HStack(spacing:50){
        VStack{
        Text("@\(user1Name)")
                .font(.system(size: 8))
            Image(user1Phote)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            
            Text("Atılan Adım")
                .font(.system(size: 8))
            Text(String(user1StepCount))
                .bold()
                .font(.system(size: 12))
                .foregroundColor(.init( red: 0.278, green: 0.898, blue: 0.415))
        }
            VStack{
                Text("ZAFER")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.init( red: 0.278, green: 0.898, blue: 0.415))
                HStack(spacing:4.6){
                    
                    Image("altinb")
                    HStack(spacing:2){
                        
                    Text("+\(goldAmmount)")
                            .bold()
                            .font(.system(size: 12))
                           
                    Text("Altın Adım")
                            .font(.system(size: 10))
                            .bold()
                            
                    }.foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                }
                Text("3-1")
                    .font(.system(size: 12))
            }
            VStack{
            Text("@\(user2Name)")
                    .font(.system(size: 8))
                Image(user2Phote)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                
                Text("Atılan Adım")
                    .font(.system(size: 8))
                Text(String(user2StepCount))
                    .bold()
                    .font(.system(size: 12))
            }
            
           
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 149)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
        .overlay(RoundedRectangle(cornerRadius: 4)
        .stroke(Color.init(red: 0.278, green: 0.898, blue: 0.415),lineWidth: 2))
        
    }
}

struct PastDuelLostUIView: View {
    var situation : Bool = false
    var user1Name : String = "meliherdurmus"
    var user2Name : String = "aleynaarslankaya"
    var user1StepCount : Int = 5000
    var user2StepCount : Int = 3000
    var user1Phote : String = "mangaa"
    var user2Phote : String = "mangaa"
    var goldAmmount : Int = 25
    var body: some View {
        HStack(spacing:50){
        VStack{
        Text("@\(user1Name)")
                .font(.system(size: 8))
            Image(user1Phote)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            
            Text("Atılan Adım")
                .font(.system(size: 8))
            Text(String(user1StepCount))
                .bold()
                .font(.system(size: 12))
                .foregroundColor(.init(red: 0.829, green: 0.166, blue: 0.117))
        }
            VStack{
                Text("KAYIP")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.init(red: 0.829, green: 0.166, blue: 0.117))
                HStack(spacing:4.6){
                    
                    Image("altinb")
                    HStack(spacing:2){
                    Text("+\(goldAmmount)")
                            .bold()
                            .font(.system(size: 12))
                            .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                    Text("Altın Adım")
                            .font(.system(size: 8))
                            .bold()
                            .foregroundColor(.init(red: 0.992, green: 0.904, blue: 0.397))
                    }
                }
                Text("3-1")
            }
            VStack{
            Text("@\(user2Name)")
                    .font(.system(size: 8))
                Image(user2Phote)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                
                Text("Atılan Adım")
                    .font(.system(size: 8))
                Text(String(user2StepCount))
                    .bold()
                    .font(.system(size: 12))
            }
            
           
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 149)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
        .overlay(RoundedRectangle(cornerRadius: 4)
        .stroke(Color.init(red: 0.829, green: 0.166, blue: 0.117),lineWidth: 2))
        
    }
}

struct PastDuelUIView_Previews: PreviewProvider {
    static var previews: some View {
        PastDuelUIView()
    }
}
