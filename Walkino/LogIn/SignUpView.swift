//
//  SignUpView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 24.02.2023.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var userInfo : UserInfo
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
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
                Group{
                    VStack(alignment: .leading){
                        HStack{
                            Image(systemName: "person.fill")
                                .foregroundColor(.gray)
                            
                            TextField("Kullanıcı adı*", text: self.$user.fullname).autocapitalization(.words)
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            if !user.validNameText.isEmpty{
                                Text(user.validNameText).font(.caption).foregroundColor(.red)
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width-32)
                            .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                        HStack{
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.gray)
                            
                            TextField("E-posta", text: self.$user.email).autocapitalization(.none).keyboardType(.emailAddress)
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            if !user.validEmailAddresText.isEmpty{
                                Text(user.validEmailAddresText).font(.caption).foregroundColor(.red)
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width-32)
                            .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                        HStack{
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.gray)
                            
                            TextField("E-posta", text: self.$user.email).autocapitalization(.none).keyboardType(.emailAddress)
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            if !user.validEmailAddresText.isEmpty{
                                Text(user.validEmailAddresText).font(.caption).foregroundColor(.red)
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width-32)
                            .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                        HStack{
                            Image(systemName: "lock.fill")
                                .foregroundColor(.gray)
                            SecureField("Password", text: self.$user.password)
                                .font(.system(size: 12))
                            if !user.validPasswordText.isEmpty{
                                Text(user.validPasswordText).font(.caption).foregroundColor(.red)
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width-32)
                            .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                        HStack{
                            Image(systemName: "lock.fill")
                                .foregroundColor(.gray)
                            SecureField("Confirm Password", text: self.$user.confirmPassword)
                                .font(.system(size: 12))
                            if !user.passwordsMatch(_confirmPW: user.confirmPassword){
                                Text(user.validConfirmPasswordText).font(.caption).foregroundColor(.red)
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width-32)
                            .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                            .cornerRadius(4)
                    }
                }
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
                        .opacity(user.isSignInComplete ? 1 : 0.75)
                }.disabled(!user.isSignInComplete)
            }
        }.padding(.top)
            .navigationBarTitle("Kayıt Ol", displayMode: .inline)
            .navigationBarItems(trailing: Button("Çık"){
                self.presentationMode.wrappedValue.dismiss()
            })
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
