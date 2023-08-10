//
//  RegisterView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 9.03.2023.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var birthday = Date()
    @StateObject private var vm = RegistrationViewModelImpl(service: RegistrationServiceImpl())
    
    var body: some View {
        NavigationView{
            VStack{
                WalkImage()
                VStack(alignment: .leading, spacing: 12){
                    Text("Kayıt Ol")
                        .font(.system(size: 32))
                        .frame(height:24)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis id tellus ac ultrices. Aenean commodo")
                        .font(.system(size: 12))
                }.frame(width: UIScreen.main.bounds.width-32)
                    .padding(.bottom,24)
                InputTextFieldView(text: $vm.userDetails.userName, placeholder: "Kullanıcı Adı*", keyboardType: .emailAddress, sfSymbol: "person.fill")
                InputTextFieldView(text: $vm.userDetails.email, placeholder: "Email*", keyboardType: .emailAddress, sfSymbol: "envelope")
                InputPasswordView(password: $vm.userDetails.password, placeholder: "Şifre*", sfSymbol: "lock.fill")
                Divider()
                InputTextFieldView(text: $vm.userDetails.occupation, placeholder: "Meslek", keyboardType: .emailAddress, sfSymbol: "envelope")
                
                /* DatePicker(selection: $vm.userDetails.birthday, in: ...Date(), displayedComponents: .date) {
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(.gray)
                        Text("Doğum Tarihi")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }.padding(.leading,32)
                 .cornerRadius(4)
                }.padding(.trailing,24) */
                
                ButtonView(title: "Kayıt Ol"){
                    vm.register()
                }
                Spacer()
            }
            .navigationBarTitle("")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
