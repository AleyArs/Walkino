//
//  ChatBubbe.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 26.12.2022.
//

import SwiftUI

struct ChatBubbe: Shape {
    var isFromCurrentUser: Bool
    func path(in rect: CGRect) ->Path  {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

struct ChatBubbe_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbe(isFromCurrentUser: true)
    }
}
