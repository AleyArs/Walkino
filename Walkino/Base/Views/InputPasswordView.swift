//
//  InputPasswordView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.03.2023.
//

import SwiftUI

struct InputPasswordView: View {
    @Binding var password: String
    let placeholder: String
    let sfSymbol: String?
    
    private let textFieldLeading: CGFloat = 30
    
    var body: some View {
        
        SecureField(placeholder, text: $password)
            .frame(
                width:UIScreen.main.bounds.width-54, height: 40)
            .padding(.leading, sfSymbol == nil ? textFieldLeading / 2: textFieldLeading)
            .background(
                ZStack(alignment: .leading){
                    if let systemImage = sfSymbol {
                        Image(systemName: systemImage)
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.leading,5)
                            .foregroundColor(Color.gray.opacity(0.5))
                    }
                    RoundedRectangle(cornerRadius: 10,
                                     style: .continuous)
                    .stroke(Color.gray.opacity(0.25))
         })
    }
}

struct InputPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        InputPasswordView(password: .constant(""), placeholder: "password", sfSymbol: "lock")
            .preview(with: "Input Password View with sfsymbol")
        InputPasswordView(password: .constant(""), placeholder: "password", sfSymbol: nil)
            .preview(with: "Input Password View with sfsymbol")
    }
}
