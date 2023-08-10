//
//  GlowBorder.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 9.12.2022.
//

import Foundation
import SwiftUI

struct GlowBorder: ViewModifier{
    var color: Color
    var lineWith: Int
    
    func body(content : Content ) -> some View {
        applyShadow(content: AnyView(content), lineWidth: lineWith)
    }
    
    func applyShadow(content: AnyView, lineWidth: Int) -> AnyView {
        if lineWidth == 0 {
            return content
        }else {
            return applyShadow(content: AnyView(content.shadow(color:color, radius: 1)), lineWidth: lineWidth-1)
        }
    }
}

extension View {
    func glowBorder(color: Color, lineWith: Int)-> some View {
        self.modifier(GlowBorder(color: color, lineWith: lineWith))
        
    }
}
