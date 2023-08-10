//
//  CorporateLoginUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 21.10.2022.
//

import SwiftUI

struct CorporateLoginUIView: View {
    @State var name: String = ""
    var body: some View {
  VStack(spacing:64){
            WalkImage()
   VStack(alignment: .leading){
            Text("Kurumsal Giriş")
                .font(.system(size: 32))
                .frame(height:24)
            Text("Walkino'ya hoş geldin!")
                    .font(.system(size: 16))
                    .frame(height:24)
            Text("Seninle paylaşılan kurum kodu ile direkt olarak giriş yapmak istiyorsan aşağıdaki boşluğa bu kodu gir ve yürüyüşe başla")
                .font(.system(size: 12))
                .frame(height:56)
       HStack{
           Image(systemName: "building")
               .foregroundColor(.gray)
               
           TextField("Kurum Kodu(Eğer varsa)", text:$name)
               .foregroundColor(.gray)
       }.padding()
           .frame(width: UIScreen.main.bounds.width-32)
           .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
           .cornerRadius(20)
            }
   .frame(
       width:UIScreen.main.bounds.width-25)
        Spacer()
        }
        
    }
}

struct CorporateLoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        CorporateLoginUIView()
    }
}
