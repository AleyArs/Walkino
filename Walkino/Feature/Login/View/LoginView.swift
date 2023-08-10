//
//  LoginView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 24.02.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var showRegistration = false
    @State private var showForgotPassword = false
    
    @StateObject private var vm = LoginViewModelImpl(service: LoginServiceImpl()
    )
    
    var body: some View {
        VStack{
            WalkImage()
            VStack(spacing: 16){
                HStack{
                    Text("Giriş Yap")
                        .frame(width: 125, height: 48)
                        .padding(.leading,32)
                        .font(.system(size: 32))
                    Spacer()
                }
                InputTextFieldView(text: $vm.credentials.email, placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                InputPasswordView(password: $vm.credentials.password, placeholder: "Password", sfSymbol: "lock")
                VStack{
                    ButtonView(title: "Giriş Yap"){
                        vm.login()
                    }
                    Button {
                        showForgotPassword.toggle()
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
                        .sheet(isPresented: $showForgotPassword) {
                            ForgotPasswordView()
                        }
                    Spacer()
                    Text("Hala kayıt olmadın mı?")
                        .font(.system(size: 12))
                        .padding(.top, 32)
                    ButtonView(title: "Kayıt Ol",
                               background: .clear,
                               foreground: Color.init(red: 0.965, green: 0.224, blue: 0.49),
                               border: Color.init( red: 0.965, green: 0.224, blue: 0.49)){
                        showRegistration.toggle()
                    }
                .sheet(isPresented: $showRegistration) {
                                   RegisterView()
                               }
                .padding(.bottom,50)
                }
            }
            
        }.navigationBarTitle("")
         .navigationBarHidden(true)
         .alert(isPresented: $vm.hasError) {
             if case .failed(let error) = vm.state {
                 return Alert(title: Text("Error"), message: Text(error.localizedDescription))
             } else {
                 return Alert (
                    title: Text("Error"),
                    message: Text("Something went wrong")
                 )
             }
         }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

/*SignInWithEmailView(showSheet: $showSheet, action: $action)
    .sheet(isPresented: $showSheet){
        if self .action == .signUp {
            SignUpView()
        } else {
            ForgotPasswordView()
        }
    }*/

/*enum Action {
    case signUp, resetPW
}
@State private var showSheet = false
@State private var action: Action?*/
