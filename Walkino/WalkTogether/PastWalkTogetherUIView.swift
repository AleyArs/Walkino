//
//  PastWalkTogetherUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.10.2022.
//

import SwiftUI

struct PastWalkTogetherUIView: View {
    var pastList : [PastWalk] = PastWalkList.two
    var body: some View{
        VStack(alignment: .leading){
            Text("Geçmiş Yürüyüşler")
                .bold()
                .padding(.leading,24)
                .font(.system(size: 16))
            List(pastList, id:\.id){ pastListEx in
                if hesap(user1StepCount: pastListEx.user1StepCount, user2StepCount: pastListEx.user2StepCount, stepGoal: pastListEx.stepGoal) == true {
                    PastWalkTogetherSuccessfulUIView( user1Name: pastListEx.user1Name, user2Name: pastListEx.user2Name, user1Photo: pastListEx.user1Photo, user2Photo: pastListEx.user2Photo, stepGoal: pastListEx.stepGoal, user1StepCount: pastListEx.user1StepCount, user2StepCount: pastListEx.user2StepCount)
                }else{
                    PastWalkTogetherUnsuccessfulUIView( user1Name: pastListEx.user1Name, user2Name: pastListEx.user2Name, user1Photo: pastListEx.user2Photo, user2Photo: pastListEx.user2Photo, stepGoal: pastListEx.stepGoal, user1StepCount: pastListEx.user1StepCount, user2StepCount: pastListEx.user2StepCount)
                }
            }
            .listStyle(PlainListStyle())
            .onAppear(perform: {
                UITableView.appearance().contentInset.top = -35
            })
        }
       }
     }
struct PastWalkTogetherUnsuccessfulUIView: View {
    var user1Name: String = "aliş"
    var user2Name : String = "meliş"
    var user1Photo : String = "mangaa"
    var user2Photo : String = "mangaa"
    var stepGoal : Int = 6000
    var user1StepCount : Int = 1234
    var user2StepCount : Int = 2345
    var body: some View{
        
        HStack(spacing:40){
        VStack{
            VStack(spacing:3){
                Text("@\(user1Name)")
                .font(.system(size: 10))
                Image(user1Photo)
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
                Text(String(user1StepCount))
                .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                .bold()
            }
        }
            VStack(spacing:8){
                Text("BAŞARISIZ")
                    .font(.system(size: 12))
                    .foregroundColor(.init( red: 0.829, green: 0.166, blue: 0.117))
                    .bold()
               
                HStack{
                    Text(String(user1StepCount + user2StepCount) )
                        .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                        .bold()
                    Text("/")
                    Text(String(stepGoal))
                        .bold()
                }.font(.system(size: 16))
                VStack(spacing:4){
                Text("Hedef Tamamlandı")
                    
                Text("07/02/2023")
                        .foregroundColor(.secondary)
                } .font(.system(size: 10))
            }
            VStack{
                VStack(spacing:3){
                Text("@\(user2Name)")
                    .font(.system(size: 10))
                    Image(user2Photo)
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
                Text(String(user2StepCount))
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                    .bold()
                }
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

struct PastWalkTogetherSuccessfulUIView: View {
    var pastList : [PastWalk] = PastWalkList.two
    var user1Name: String = "aliş"
    var user2Name : String = "meliş"
    var user1Photo : String = "mangaa"
    var user2Photo : String = "mangaa"
    var stepGoal : Int = 6000
    var user1StepCount : Int = 1234
    var user2StepCount : Int = 2345
    var body: some View{
        HStack(spacing:40){
        VStack{
            VStack(spacing:3){
                Text("@\(user1Name)")
                .font(.system(size: 10))
                Image(user1Photo)
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
                Text(String(user1StepCount))
                .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                .bold()
            }
        }
            VStack(spacing:8){
                Text("BAŞARILI")
                    .font(.system(size: 12))
                    .foregroundColor(.init( red: 0.278, green: 0.898, blue: 0.415))
                    .bold()
               
                HStack{
                    Text(String(user1StepCount + user2StepCount) )
                        .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                        .bold()
                    Text("/")
                    Text(String(stepGoal))
                        .bold()
                }.font(.system(size: 16))
                VStack(spacing:4){
                Text("Hedef Tamamlandı")
                    
                Text("07/02/2023")
                        .foregroundColor(.secondary)
                }
                    .font(.system(size: 10))
                    
            }
            VStack{
                VStack(spacing:3){
                Text("@\(user2Name)")
                    .font(.system(size: 10))
                    Image(user2Photo)
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
                Text(String(user2StepCount))
                    .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                    .bold()
                }
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
struct PastWalkTogetherUIView_Previews: PreviewProvider {
    static var previews: some View {
        PastWalkTogetherUIView()
    }
}
