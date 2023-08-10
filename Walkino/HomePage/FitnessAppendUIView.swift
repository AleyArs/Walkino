//
//  FitnessAppendUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.11.2022.
//

import SwiftUI

struct FitnessAppendUIView: View {
    var body: some View {
        NavigationView{
            FitnessUIView()
                .navigationTitle("Gelişim")
                .navigationBarTitleDisplayMode(.inline)
                .accentColor(Color.init( red: 0.965, green: 0.224, blue: 0.49))
            
        }
    }
}

struct FitnessAppendUIView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessAppendUIView()
    }
}
