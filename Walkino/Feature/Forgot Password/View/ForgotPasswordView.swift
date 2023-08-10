//
//  ForgotPasswordView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 25.02.2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var vm = ForgotPasswordViewModelImpl(
     service: ForgotPasswordServiceImpl()
    )
    
    var body: some View {
        NavigationView{
            VStack{
                InputTextFieldView(text: $vm.email,
                                   placeholder: "Email",
                                   keyboardType: .emailAddress,
                                   sfSymbol: "envelope")
                ButtonView(title: "Emailine sıfırlama gönder") {
                    vm.sendPasswordReset()
                    presentationMode.wrappedValue.dismiss()
                }
            }.navigationBarTitle("")
                .navigationBarHidden(true)
                .toolbar{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
