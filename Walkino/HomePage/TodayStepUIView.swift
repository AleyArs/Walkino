//
//  TodayStepUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.11.2022.
//

import SwiftUI
import HealthKit

struct TodayStepUIView: View {
    
    var body: some View {
            HStack{
                Image("adım")
                    .frame(width: 29.25, height: 40.55)
                    .padding(16.89)
                
                VStack(alignment: .leading, spacing: 2){
                    Text("Bugün Attığın Adım")
                        .frame( height: 18)
                        .font(.system(size: 12))
                    Text("1.53 km")
                        .frame(height: 15)
                        .font(.system(size: 12))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(String("0"))
                    .bold()
                    .font(.system(size: 24))
                    .padding()
            }
            .frame(
                width:UIScreen.main.bounds.width-24, height: 62
            )
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 17.61,  y: 26)
    }
}

struct TodayStepUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodayStepUIView()
    }
}
