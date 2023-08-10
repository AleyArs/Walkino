//
//  FitnessUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.11.2022.
//

import SwiftUI

struct FitnessUIView: View {
    @State var fitnessBar: String = "Hafta"
    @State var index = 0
    var body: some View {
       
        VStack{
            Picker("", selection: $fitnessBar) {
                Text("Hafta")
                    .tag("Hafta")
                Text("Ay")
                    .tag("Ay")
                Text("6Ay")
                    .tag("6Ay")
            }
            .frame(width: 327, height: 25)
            .pickerStyle(.segmented)
            .padding()
            if fitnessBar == "Hafta"{
                WeeklyProgressBarUIView()
            } else if fitnessBar == "Ay"{
                WeeklyProgressCalenderUIView()
            } else if  fitnessBar == "6Ay"{
                SixMonthProgressUIView()
            }
        }
        .navigationTitle("Gelişim")
        .navigationBarTitleDisplayMode(.inline)
    
    }
    
}

struct FitnessUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        FitnessUIView()
                .navigationTitle("Gelişim")
        }
    }
}
