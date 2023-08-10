//
//  WalkTogetherUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.11.2022.
//

import SwiftUI

struct WalkTogetherUIView: View {
    var body: some View {
        VStack{
        NowStepUIView()
                .padding(.bottom)
        PastWalkTogetherUIView()
            
        }
    }
}

struct WalkTogetherUIView_Previews: PreviewProvider {
    static var previews: some View {
        WalkTogetherUIView()
    }
}
