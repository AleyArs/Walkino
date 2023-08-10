//
//  inactiveWalkTogetherUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 14.10.2022.
//

import SwiftUI

struct inactiveWalkTogetherUIView: View {
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                NavigationBarView()
                NavigationLink(destination:
                                OfferUIView()){
                    VStack{
                        Text("Henüz birlikte yürümeye başlamadın\nDavet et ve birlikte yürü")
                    }
                    
                    .frame(
                        width:UIScreen.main.bounds.width-24, height: 149)
                    .font(.system(size: 16))
                    .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(4)
                    .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
                }
                Text("Geçmiş Yürüyüşler")
                    .font(.system(size: 16))
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .statusBar(hidden: true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct inactiveWalkTogetherUIView_Previews: PreviewProvider {
    static var previews: some View {
        inactiveWalkTogetherUIView()
    }
}
