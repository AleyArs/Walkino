//
//  EditProfileUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 9.01.2023.
//

import SwiftUI

struct EditProfileUIView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var name: String = ""
    @State var baslık: String = ""
    @State var bio: String = ""
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        ScrollView{
            VStack{
                Button(action:{
                    showImagePicker.toggle()
                }, label: {
                    if let profileImage = profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 97, height: 97)
                            .clipShape(Circle())
                            .padding(.bottom)
                            .padding(.top)
                    } else {
                        Image("friend")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 97, height: 97)
                            .clipShape(Circle())
                            .padding(.bottom)
                            .padding(.top)
                    }
                })
                .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                    ImagePicker(image: $selectedImage)
                }
                CustomTextField(imageName: "circle.hexagonpath", placeholderText: "Kullanıcı Adı", text: $name)
                CustomTextField(imageName: "circle.hexagonpath", placeholderText: "Başlık", text: $baslık)
                CustomTextField(imageName: "circle.hexagonpath", placeholderText: "Bio", text: $bio)
                CustomTextField(imageName: "calendar.circle", placeholderText: "Doğum Tarihi", text: $bio)
                
                HStack{
                    CustomMinTextField(imageName: "calendar.circle", placeholderText: "Boy(cm)", text: $bio)
                    CustomMinTextField(imageName: "flame.fill", placeholderText: "Kilo(kg)", text: $bio)
                }.frame(width: UIScreen.main.bounds.width-24)
                    .padding(.bottom)
                Button(action: {
                    //                Butona basıldı
                }){
                    Text("Kaydet")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width-24)
                        .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                        .cornerRadius(20)
                }
                Spacer()
            }
        }
        .navigationTitle(Text("aleynaarslankaya"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                       Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           HStack {
                               Image(systemName: "chevron.backward")
                               Text("Profil")
                           }.foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                   })
    }
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}
struct CustomMinTextField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.gray)
            
            TextField(placeholderText, text:$text )
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(20)
    }
}


//UIScreen.main.bounds.height/3.1
struct EditProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileUIView()
    }
}
