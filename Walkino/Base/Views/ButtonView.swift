//
//  ButtonComponentView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.03.2023.
//

import SwiftUI

struct ButtonView: View {
    
    typealias ActionHandler = () -> Void
    
    let title: String
    let background: Color
    let foreground: Color
    let border: Color
    let handler: ActionHandler
    
    private let cornerRadius: CGFloat = 10
    
    internal init(title: String,
                  background: Color = Color.init( red: 0.965, green: 0.224, blue: 0.49),
                  foreground: Color = .white,
                  border: Color = .clear,
                  handler: @escaping ButtonView.ActionHandler) {
        self.title = title
        self.background = background
        self.foreground = foreground
        self.border = border
        self.handler = handler
    }
    var body: some View {
        Button(action: handler, label: {
            Text(title)
                .frame(maxWidth: .infinity, maxHeight: 50)
        })
        .frame(
            width:UIScreen.main.bounds.width-24, height: 40)
        .background(background)
        .foregroundColor(foreground)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(cornerRadius)
        .overlay(RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(border, lineWidth: 2)
                 )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonView(title: "Primary Button"){}
                .preview(with: "Primary Button View")
            ButtonView(title: "Secondary Button",
             background: .clear,
                       foreground: Color.init(red: 0.965, green: 0.224, blue: 0.49),
                       border: Color.init( red: 0.965, green: 0.224, blue: 0.49)){}
                .preview(with: "Primary Button View")
        }
    }
}
