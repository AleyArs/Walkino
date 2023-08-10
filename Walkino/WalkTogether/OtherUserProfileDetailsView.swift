//
//  OtherUserProfileDetailsView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.01.2023.
//

import SwiftUI

struct OtherUserProfileDetailsView: View {
    var otherUserProfileDetailsView : [OtherUserProfileResponse] = OtherUserProfileResponseList.one
    var body: some View {
        NavigationView{
            VStack{
                List(otherUserProfileDetailsView, id:\.userName) { details in
                    HStack{
                        Text(details.userName)
                            .font(.system(size: 20))
                            .bold()
                        Spacer()
                    }.frame(
                        width:UIScreen.main.bounds.width-24, height: 40)
                    VStack{
                        userInformation(userName: details.userName , level: details.level,  followerCount: details.followerCount, followCount: details.followCount , title: details.title, bio: details.bio)
                            .frame(
                                width:UIScreen.main.bounds.width-24)
                        SocialCardUIView()
                            .padding(.bottom)
                        NavigationLink(destination:
                               List(details.rosette, id:\.sıra){ aaa in
                            RosetteRowDetailsUIView(rosette: aaa)
                        }.listStyle(PlainListStyle())
                        ){
                            HStack{
                                Text("Rozetler ve Başarımlar")
                                    .bold()
                                    .frame(width: 173, height: 24)
                                    .font(.system(size: 16))
                                Spacer()
                                Text("Daha fazlasını gör >")
                                    .frame(width: 101, height: 24)
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: UIScreen.main.bounds.width-24)
                        }
                        ScrollView(.horizontal,showsIndicators: true){
                            HStack(spacing: 35) {
                                ForEach(details.rosette, id:\.sıra) {
                                    circleListt in
                                    CircleLevelRow(percentageComplete: Float(circleListt.percentageComplete), rosetteImage: circleListt.rosetteImage,rosetteName: circleListt.rosetteName,rosetteDone: circleListt.rosetteDone, rosetteLevel: circleListt.rosetteLevel)
                                }
                                Spacer()
                            }
                            .frame(
                                width:UIScreen.main.bounds.width-24, height: 180)
                            .padding(.leading,25)
                            .padding(.trailing,25)
                            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26.62)
                        }
                        VStack(alignment: .leading){
                            Text("Etkinlikler")
                        }
                                List(details.activities, id:\.sıra) { pastduelList in
                                    activity(activityModel: pastduelList)
                                }
                            
                            
                        }
                }.listStyle(PlainListStyle())
            }
        }.navigationBarTitle("")
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .statusBar(hidden: true)
       
    }
}

struct OtherUserProfileDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        OtherUserProfileDetailsView()
    }
}
