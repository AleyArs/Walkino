//
//  CustomTextField.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 22.02.2023.
//

import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
         HStack{
            Image(systemName: imageName )
                        .foregroundColor(.gray)
                        
                    TextField(placeholderText, text:$text )
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width-24)
                .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(20)
            
    }
}

