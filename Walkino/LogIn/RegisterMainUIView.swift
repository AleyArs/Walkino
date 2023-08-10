//
//  RegisterMainUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.01.2023.
//

import SwiftUI

struct RegisterMainUIView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            
            Text("Walkino’nun bir parçası olmak için istediğin kayıt yöntemini kullanabilirsin.")
                .font(.system(size: 16))
                .frame(width: UIScreen.main.bounds.width-32)
                .padding(.top, 24)
            VStack{
                RegisterGoogleLogIn()
                RegisterAppleLogIn()
                RegisterFormLogIn()
                RegisterCorporationLogIn()
            }
            Spacer()
        }
        .background(Color.white)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
        .navigationTitle(Text("Kayıt Ol").bold().font(.system(size: 24)))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                       Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           HStack {
                               Image(systemName: "chevron.backward")
                               Text("Giriş")
                           }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                   })
   }
}

struct RegisterGoogleLogIn: View {
    var body: some View {
        Button {
            //Butona Basıldı
        } label: {
            Text("Google ile Kayıt Ol")
                .padding()
                .foregroundColor(.black)
                .frame(width: UIScreen.main.bounds.width-32, height: 40)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .padding(.top, 19)
        }
    }
}

struct RegisterFormLogIn: View {
    var body: some View {
        HStack{
            Image(systemName: "newspaper.fill")
                .foregroundColor(.pink)
                .font(.system(size: 22))
            Text("Form ile Kayıt Ol")
        }
        .padding()
        .foregroundColor(.black)
        .frame(width: UIScreen.main.bounds.width-32, height: 40)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .padding(.top, 8)
    }
}

struct RegisterAppleLogIn: View {
    var body: some View {
        HStack{
            Image(systemName: "apple.logo")
                .font(.system(size: 22))
            Text("Apple ile Kayıt Ol")
        }
            .padding()
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width-32, height: 40)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .padding(.top, 8)
    }
}

struct RegisterCorporationLogIn: View {
    var body: some View {
        HStack{
            Image(systemName: "building.fill")
                .font(.system(size: 25))
                .foregroundColor(.blue)
            Text("Kurum Kodu ile Kayıt Ol")
        }
            .padding()
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width-32, height: 40)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .padding(.top, 8)
    }
}

struct RegisterMainUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterMainUIView()
    }
}
