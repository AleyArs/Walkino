//
//  LogUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.09.2022.
//

import SwiftUI
struct LogUIView: View {
    let WalkCol = Color(red: 246, green: 57, blue: 125)
    @State private var eposta = ""
    @State private var sifre = ""
    var body: some View {
        VStack{
            WalkImage()
            GirisText()
            UsernameTextField(eposta: $eposta, sifre: $sifre)
            loginButton()
            Button(action: {print("Button tapped")}){
            ForgetPasswordText()
            }
            Button(action: {print("Button tapped")}){
                GoogleLogIn()}
            
            Button(action: {print("Button tapped")}){
                AppleLogIn()}
            
            Button(action: {print("Button tapped")}){
                KurumLogIn()}
            
            Text("Hala kayıt olmadınız mı?")
                .font(.system(size: 12))
                .padding(.top, 32)
            
            Text("Kayıt Ol")
                .font(.system(size: 16))
                .frame(width: 311, height: 40)
                .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                .overlay(RoundedRectangle(cornerRadius: 9).stroke(Color.init(red: 0.965, green: 0.224, blue: 0.49),lineWidth: 2))
                .padding()
        }
    }
}

struct LogUIView_Previews: PreviewProvider {
    static var previews: some View {
        LogUIView()
    }
}

struct GirisText: View {
    var body: some View {
        Text("Giriş Yap")
            .frame(width: 125, height: 48).padding(.trailing,218).padding(.leading,32).font(.system(size: 32)).padding(.top,32).padding(.bottom, 16)
    }
}



struct UsernameTextField: View {
    @Binding var eposta: String
    @Binding var sifre : String
    
    var body: some View {
        Group {TextField("E-posta", text: $eposta)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                 padding(.trailing, 32)
                .padding()
                .frame(width: 311, height: 40)
            SecureField("Şifre", text: $sifre)
            .autocapitalization(.none)
            .padding(.trailing, 32)
            .padding()
            .frame(width: 311, height: 40)}
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .padding(.trailing, 32)
        .padding(.leading, 32)
    }
}



struct KurumLogIn: View {
    var body: some View {
        Text("Kurum Kodu ile Giriş Yap")
            .padding()
            .foregroundColor(.black)
            .frame(width: 311, height: 40)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98)).padding(.top, 8)
    }
}

struct loginButton: View {
    var body: some View {
        Button(action: {print("Button tapped")}){
            LoginButtonContent()
            
        }
    }
}
