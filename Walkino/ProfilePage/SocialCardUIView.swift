//
//  SocialCardUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.11.2022.
//

import SwiftUI

struct SocialCardUIView: View {
    var body: some View {
        HStack{
            Button(action:{
              //butona basıldı
            }){
                ZStack{
                    VStack{
                        Image("asas")
                            .resizable()
                            .frame(width: 41.25,height: 25.14)
                        Text("Birlikte Yürü")
                            .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                            .font(.system(size: 12))
                            .bold()
                        Text("hedefi tamamla")
                            .font(.system(size: 8))
                            .foregroundColor(.secondary)
                        
                    }
                    
                }
                .frame(width: 160, height: 70)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
            }
            Button(action:{
              //butona basıldı
            }){
                ZStack{
                    VStack{
                        Image("assaas")
                            .resizable()
                            .frame(width: 41.25,height: 25.14)
                        Text("Düello Yap")
                            .foregroundColor(.init( red: 0.965, green: 0.224, blue: 0.49))
                            .font(.system(size: 12))
                            .bold()
                        Text("rekabet et")
                            .font(.system(size: 8))
                            .foregroundColor(.secondary)
                        
                    }
                    
                }
                .frame(width: 160, height: 70)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
            }
            
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 70)
            
    }
}

struct SocialCardUIView_Previews: PreviewProvider {
    static var previews: some View {
        SocialCardUIView()
    }
}
