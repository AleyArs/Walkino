//
//  RosetteDetailsUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 18.11.2022.
//

import SwiftUI

struct RosetteDetailsUIView: View {
    var color = ColorConstants()
    var goldcolor = ColorGoldConstants()
    var CircleList : [UserProfileResponse] = UserProfileResponseList.one
    var body: some View {
        ForEach(CircleList, id:\.name) { circlelist in
            List(circlelist.rosette, id:\.sıra){ aaa in
                RosetteRowDetailsUIView(rosette: aaa)
            }.listStyle(PlainListStyle())
        }
      }
    }

struct RosetteRowDetailsUIView: View {
    @Environment(\.presentationMode) var presentationMode
    let rosette : Rosette
    var color = ColorConstants()
    var goldcolor = ColorGoldConstants()
    var body: some View {
        HStack(spacing:15){
        VStack(spacing: 10){
        VStack(spacing: 10){
            ZStack{
            ZStack{
            Circle()
                    .stroke(Color.init(red: 0.733, green: 0.78, blue: 0.808),lineWidth: 18)
                    .frame(width: 57, height: 57)
            Circle()
                    .trim(from: 0.0, to: rosette.percentageComplete)
                    .stroke(.linearGradient(ColorConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading),lineWidth: 18)
                .rotationEffect(.init(degrees: -90))
                .frame(width: 57, height: 57)
            }
                Image(rosette.rosetteImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 55)
                    .clipShape(Circle())
                
            }
            .padding(.top)
        }
            Text(String(rosette.rosetteDone))
                        .fontWeight(.light)
                        .font(.system(size: 12))
                    +
                    Text( "/")
                    .fontWeight(.light)
                    .font(.system(size: 12))
                             +
            Text(String(rosette.rosetteLevel))
                            .fontWeight(.light)
                            .font(.system(size: 12))
                    
        }.padding(.leading, -2)
            VStack(alignment:.leading){
                Text(rosette.rosetteName)
                    
                Text("\(rosette.rosetteLevel) kez Voleybol etkinliğine katıl")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            
            VStack{
                ZStack{
                Image("aall")
                    .resizable()
                    .frame(width: 42.16, height: 43.94)
                    Text("x \(rosette.goldStep)")
                        .frame(height: 10.58)
                        .padding(.leading,19)
                        .padding(.top,38)
                }
             
                Text("Ödülü Al")
                    .frame(width: 75, height: 25)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: ColorGoldConstants.backgroundGradient, startPoint: .trailing, endPoint: .leading))
                    .cornerRadius(4)
            }.padding(.trailing,-14)
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 93
         )
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
        .navigationTitle(Text("Rozetler"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                       Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           HStack {
                               Image(systemName: "chevron.backward")
                               Text("Profil")
                           }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                   })
    }
        }
struct ColorGoldConstants {
    static let startColor = Color.init(red: 0.961, green: 0.93, blue: 0.192)
    static let endColor = Color.init(red: 1, green: 0.773, blue: 0.431)
    
    static let backgroundGradient = Gradient(colors: [startColor,endColor])
}
    

struct RosetteDetailsUIView_Previews: PreviewProvider {
    static var previews: some View {
        RosetteDetailsUIView()
    }
}
