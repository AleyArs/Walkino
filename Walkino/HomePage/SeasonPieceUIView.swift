//
//  SeasonPieceUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 19.10.2022.
//

import SwiftUI

struct SeasonPieceUIView: View {
    var body: some View {
        VStack{
            SeasonListUIView()
                .frame(width: 327, height: 100)
        }
    }
}

struct SeasonListUIView:View {
    var SeasonPrize : [SeasonGoal] = SeasonGoalList.seasonGoalList
   
    var body: some View {
        HStack{
            Text(Image(systemName: "chevron.left"))
                .frame(width: 20, height: 100)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26)
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:16){
                ForEach(SeasonPrize, id:\.level){
                    seasonPrize in
                    if seasonPrize.claimed == true {
                        SeasonPieceCompletedUIView(level: seasonPrize.level, prize: seasonPrize.prize)
                    }else if seasonPrize.claimable == true {
                        SeasonPieceGetAwardUIView(level: seasonPrize.level, prize: seasonPrize.prize)
                    }else {
                        SeasonPieceLockUIView(level: seasonPrize.level, prize: seasonPrize.prize)
                    }
                }
            }
        }
        .frame(
            width:UIScreen.main.bounds.width-65, height: 110
         )
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26)
       Text(Image(systemName: "chevron.right"))
                .frame(width: 20, height: 100)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 4.15,  y: 26)
        }
        
        
    }
}



struct SeasonPieceCompletedUIView: View {
    var level : Int = 1
    var prize : Int = 50
    var body: some View{
        VStack{
            HStack(spacing: 15){
            Text("Seviye \(String(level))")
                .font(.system(size: 10))
                .frame(height: 15)
            Image("SeasonTik")
                    .frame(width: 12, height: 12)
            }
        ZStack{
        Image("seasonstep")
            .resizable()
            .frame(width: 42.16, height: 43.94)
        Text("x\(String(prize))")
                .bold()
                .padding(.leading,43)
                .padding(.top,38)
        }
        }.frame(width: 79, height: 79)
            .background(Color.white)
            .cornerRadius(4)
    }
}

struct SeasonPieceLockUIView: View {
    var level : Int = 2
    var prize : Int = 50
    var body: some View{
        VStack{
            HStack(spacing: 15){
            Text("Seviye \(String(level))")
                .font(.system(size: 10))
                .frame(height: 15)
            Image("Lock")
                    .frame(width: 12, height: 13)
            }
        ZStack{
        Image("seasonstep")
            .resizable()
            .frame(width: 42.16, height: 43.94)
        Text("x\(String(prize))")
                .bold()
                .padding(.leading,43)
                .padding(.top,38)
        }
        }.frame(width: 79, height: 79)
            .background(Color.white)
            .cornerRadius(4)
    }
}

struct SeasonPieceGetAwardUIView: View {
    var level : Int = 2
    var prize : Int = 50
    var body: some View{
        ZStack{
        VStack{
           Text("Seviye \(String(level))")
                .font(.system(size: 10))
                .frame(height: 15)
                .padding(.leading,-21)
            
        ZStack{
        Image("seasonstep")
            .resizable()
            .frame(width: 42.16, height: 43.94)
        Text("x\(String(prize))")
                .bold()
                .padding(.leading,43)
                .padding(.top,38)
        }
            
        
        }.frame(width: 79, height: 79)
            .background(Color.white)
            .cornerRadius(4)
            
           
        Text("Ödülü Al")
                .frame(width: 76, height: 14)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                .cornerRadius(3)
                .background(Color.white)
                .padding(.top,95)
        }
    }
}


    
struct SeasonPieceUIView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonPieceUIView()
    }
}
