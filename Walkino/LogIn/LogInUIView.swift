//
//  LogInUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.01.2023.
//

import SwiftUI

struct SecureTextField: View {
    @State private var isSecureField: Bool = true
    @Binding var text : String
    var body: some View{
        HStack{
            if isSecureField{
                HStack{
                    Image(systemName: "lock.fill")
                        .foregroundColor(.gray)
                    SecureField("Password", text: $text)
                        .font(.system(size: 12))
                }.padding()
                    .frame(width: UIScreen.main.bounds.width-32)
                    .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(4)
            } else {
                HStack{
                    Image(systemName: "lock.fill")
                        .foregroundColor(.gray)
                    TextField(text, text: $text)
                        .font(.system(size: 12))
                }.padding()
                    .frame(width: UIScreen.main.bounds.width-32)
                    .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(4)
            }
        }.overlay(alignment: .trailing){
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .padding(.trailing)
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
    }
}

struct LogInUIView: View {
    @State private var name: String = ""
    @State private var password : String = ""
    var body: some View {
        NavigationView{
            VStack{
                WalkImage()
                VStack(alignment: .leading){
                    Text("Giriş Yap")
                        .font(.system(size: 32))
                        .padding(.top, 55)
                    
                    HStack{
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.gray)
                        
                        TextField("E-Posta", text:$name )
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width-32)
                        .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                        .cornerRadius(4)
                    SecureTextField(text: $password)
                }
                LoginButtonContent()
                ForgetPasswordText()
                GoogleLogIn()
                AppleLogIn()
                CorporationLogIn()
                Text("Hala kayıt olmadınız mı?")
                    .font(.system(size: 12))
                    .padding(.top, 32)
                RegisterButton()
                
                Spacer()
                
            }
        }.navigationBarTitle("")
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .statusBar(hidden: true)
    }
}
struct LoginButtonContent: View {
    var body: some View {
        Button {
            //Butona Basıldı
        } label: {
            Text("Giriş Yap")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: UIScreen.main.bounds.width-32, height: 40)
                .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                .cornerRadius(4)
                .padding(.top, 24)
        }
    }
}

struct ForgetPasswordText: View {
    var body: some View {
        Button {
            //Butona Basıldı
        } label: {
            Text("Şifreni mi unuttun?")
                .padding(.top,16)
                .frame( height: 18)
                .padding(.bottom,16)
                .font(.system(size: 12))
                .foregroundColor(.black)
                .background( Color.black
                    .frame(height: 1)
                    .offset(y: 10)
          )
        }
    }
}
struct GoogleLogIn: View {
    var body: some View {
        Text("Google ile Giriş Yap")
        .padding()
        .foregroundColor(.black)
        .frame(width: UIScreen.main.bounds.width-32, height: 40)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .padding(.top, 19)
    }
}
struct AppleLogIn: View {
    var body: some View {
        HStack{
            Image(systemName: "apple.logo")
                .font(.system(size: 22))
            Text("Apple ile Giriş Yap")
        }
            .padding()
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width-32, height: 40)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .padding(.top, 8)
    }
}
struct CorporationLogIn: View {
    var body: some View {
        HStack{
            Image(systemName: "building.fill")
                .font(.system(size: 25))
                .foregroundColor(.blue)
            Text("Kurum Kodu ile Giriş Yap")
        }
            .padding()
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width-32, height: 40)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .padding(.top, 8)
    }
}
struct WalkImage: View {
    var body: some View {
        Image("logwalk")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 123.17, height: 50)
            .padding(.top, 17)
            .padding(.bottom,64)
    }
}

struct RegisterButton: View {
    var body: some View {
        NavigationLink(destination:
                        RegisterMainUIView()){
            VStack{
                Text("Kayıt Ol")
                    .font(.system(size: 16))
                    .frame(width: UIScreen.main.bounds.width-32, height: 40)
                    .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                    .overlay(RoundedRectangle(cornerRadius: 9)
                        .stroke(Color.init(red: 0.965, green: 0.224, blue: 0.49),lineWidth: 2))
                    .padding()
            }
        }
    }
}

struct LogInUIView_Previews: PreviewProvider {
    static var previews: some View {
        LogInUIView()
    }
}
