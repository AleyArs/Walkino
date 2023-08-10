//
//  DuelView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.01.2023.
//

import SwiftUI

struct DuelView: View {
    var body: some View {
        VStack{
            ActiveDuelUIView()
                .padding(.bottom)
            PastDuelUIView()
        }
    }
}

struct DuelView_Previews: PreviewProvider {
    static var previews: some View {
        DuelView()
    }
}
