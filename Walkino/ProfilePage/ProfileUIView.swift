//
//  ProfileUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 28.09.2022.
//

import SwiftUI

struct ProfileUIView: View {
    @State var cardShown = false
    @State var cardDismissal = false
    @State var selectedTab : Tab = .person
    var UserInformation : [UserProfileResponse] = UserProfileResponseList.one
    @EnvironmentObject var sessionService: SessionServiceImpl
    var body: some View {
        NavigationView{
            ZStack(alignment: .topTrailing){
                VStack{
                    ForEach(UserInformation, id: \.name) { information in
                        HStack{
                            Text(information.userName)
                                .font(.system(size: 20))
                                .bold()
                            Spacer()
                        }.frame(
                            width:UIScreen.main.bounds.width-24, height: 40)
              userInformation(userName: information.userName, photo: information.photo, level: information.level, followerCount: information.followCount, followCount: information.followCount, title: information.title, bio: information.bio)
                                }
                                VStack{
                                    NavigationLink(destination:
                                                    EditProfileUIView()){
                                        Text("Profili Düzenle")
                                            .frame(width: 327, height: 26)
                                            .font(.system(size: 12))
                                            .foregroundColor(.black)
                                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black))
                                    }
                                }
                                .frame(
                                    width:UIScreen.main.bounds.width-24)
                                
                                NavigationLink(destination:
                                                RosetteDetailsUIView()){
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
                                    }.frame(
                                        width:UIScreen.main.bounds.width-24)
                                }
                    VStack{
                        CircleLevelUIView()
                    }
                                    VStack(alignment: .leading){
                                        Text("Etkinklikler")
                                            .bold()
                                            .padding(.leading,24)
                                            .frame(height: 24)
                                            .font(.system(size: 16))
                                        ProfileActivitiesUIView()
                                    }
                            }
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .statusBar(hidden: true)
                Button(action: {
                    cardShown.toggle()
                    cardDismissal.toggle()
                }){
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(Color.black)
                        .font(.system(size: 36))
                        .offset(x: 0.5, y: -0.5)
                }
                
                BottomCard(cardShown: $cardShown, cardDismissal: $cardDismissal,
                           height: UIScreen.main.bounds.height/3.1){
                    CardContent()
                    
                } .animation(.default)
            }
        }
    }
}

struct CardContent: View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Spacer()
            Text("Uygulamadan çıkış yap")
                .font(.system(size: 16))
            ButtonView(title: "Çıkış Yap"){
                sessionService.logout()
            }
            Spacer()
        }.padding(.leading,24)
    }
}

struct BottomCard<Content : View>: View {
    let content : Content
    @Binding var cardShown: Bool
    @Binding var cardDismissal: Bool
    @State private var animationAmount = 1.0
    let height: CGFloat
    init(cardShown: Binding<Bool>,
         cardDismissal:Binding<Bool>,
         height : CGFloat,
        @ViewBuilder content: () -> Content ) {
        self.height = height
        _cardShown = cardShown
        _cardDismissal = cardDismissal
        self.content = content()
    }
    var body: some View {
        ZStack(alignment: .bottom){
            GeometryReader {_ in
                VStack{
                    EmptyView()
                }
            }.background(Color.gray.opacity(0.5))
                .opacity(cardShown ? 1 : 0)
                .animation( .easeInOut(duration: 1)
                    
        .repeatForever(autoreverses: false),value: animationAmount     )
                .onTapGesture {
                    self.dismiss()
                }
            VStack{
                Spacer()
                VStack{
                    CardContent()
                    Button {
                        self.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .offset(x:21, y:21)
                    }

                }.background(Color.white)
                    .frame(height: height)
                    .offset(y: cardDismissal && cardShown ? 0 : height)
                    .animation(Animation.default.delay(0.2))
                    .cornerRadius(32)
            }
          
        }.edgesIgnoringSafeArea(.all)
        
    }
    func dismiss() {
        cardDismissal.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            cardShown.toggle()
        }
    }
}
struct userInformation: View {
    var userName : String = "Aleyna Arslankaya"
    var photo : String = "Ellipse"
    var level: Int = 11
    var followerCount : Int = 143
    var followCount : Int = 132
    var title : String = "Walkino"
    var bio: String = "Walkino Co-Founder."
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 77, height: 77)
                    .clipShape(Circle())
                Spacer()
                HStack(spacing: 45){
                    VStack(spacing:2){
                        Text(String(level))
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Text("Seviye")
                            .fontWeight(.light)
                            .font(.system(size: 12))
                    }
                    VStack(spacing:2){
                        Text(String(followerCount))
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Text("Takipçi")
                            .fontWeight(.light)
                            .font(.system(size: 12))
                    }
                    VStack(spacing:2){
                        Text(String(followCount))
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Text("Takipçi")
                            .fontWeight(.light)
                            .font(.system(size: 12))
                        
                    }
                }
            }.padding(.leading,24)
                .padding(.trailing,52)
            VStack(alignment:.leading){
                VStack(alignment: .leading, spacing: 2){
                    Text(userName)
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    
                    Text(title)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                }
                .padding(.vertical,6)
                Text(bio)
                    .font(.system(size: 12))
                    .padding(.leading,2)
                    .padding(.trailing,2)
            }.padding(.leading,24)
        }
    }
}


struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}

