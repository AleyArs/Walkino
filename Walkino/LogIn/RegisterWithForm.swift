//
//  RegisterWithForm.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.01.2023.
//

import SwiftUI

struct RegisterWithForm: View {
    @State private var name: String = ""
    @State private var password : String = ""
    @State var bio: String = ""
    var body: some View {
        VStack{
            WalkImage()
                .padding(.bottom,64)
            VStack(alignment: .leading, spacing: 12){
                Text("Kayıt Ol")
                    .font(.system(size: 32))
                    .frame(height:24)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis id tellus ac ultrices. Aenean commodo")
                    .font(.system(size: 12))
            }.frame(width: UIScreen.main.bounds.width-32)
                .padding(.bottom,24)
            HStack{
                Image(systemName: "person.fill")
                    .foregroundColor(.gray)
                
                TextField("Kullanıcı adı*", text:$name )
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }.padding()
                .frame(width: UIScreen.main.bounds.width-32)
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
            HStack{
                Image(systemName: "envelope.fill")
                    .foregroundColor(.gray)
                
                TextField("E-posta*", text:$name )
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }.padding()
                .frame(width: UIScreen.main.bounds.width-32)
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
            RegisterSecureTextField(text: $password)
            HStack{
                Image(systemName: "calendar")
                    .foregroundColor(.gray)
                
                TextField("E-posta*", text:$name )
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }.padding()
                .frame(width: UIScreen.main.bounds.width-32)
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
            HStack{
                HStack{
                    Image(systemName: "calendar.circle")
                        .foregroundColor(.gray)
                    
                    TextField("Boy(cm)", text:$bio )
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                .padding()
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(20)
                HStack{
                    Image(systemName: "flame.fill")
                        .foregroundColor(.gray)
                    
                    
                    TextField("Kilo(kg)", text:$bio )
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                .padding()
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(20)
            }.frame(width: UIScreen.main.bounds.width-24)
                .padding(.bottom)
            HStack{
                Image(systemName: "building")
                    .foregroundColor(.gray)
                    
                TextField("Kurum Kodu(Eğer varsa)", text:$name )
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }.padding()
                .frame(width: UIScreen.main.bounds.width-32)
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(20)
            
            LoginButtonFillContent()
                .padding(.top)
            Spacer()
        }
    }
}

struct RegisterSecureTextField: View {
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
struct LoginButtonFillContent: View {
    var body: some View {
        Button {
            //Butona Basıldı
        } label: {
            Text("Kayıt Ol")
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

struct RegisterWithForm_Previews: PreviewProvider {
    static var previews: some View {
        RegisterWithForm()
    }
}
