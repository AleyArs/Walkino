//
//  NavigationBarView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 5.12.2022.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        VStack{
            HStack{
                GoldenTopBarUIView()
                Spacer()
                Image("topWalk")
                    .frame(width:79, height: 32.07, alignment: .center)
                Spacer()
                Button(action: {}, label: {
                    ringIcon()
                })
                NavigationLink(destination:
                                ChatMainUIView()){
                    MessageIcon()
                }
            }
            .frame(
                width:UIScreen.main.bounds.width-24, height: 40)
        }
    }
}

struct NavigationBarOtherView: View {
    var body: some View {
            HStack{
                Button(action: {
                    
                }, label: {
                    friendIcon()
            })
                Spacer()
                Image("topWalk")
                    .frame(width:79, height: 32.07, alignment: .center)
                Spacer()
                    Button(action: {}, label: {
                        ringIcon()
                    })
                    Button(action: {}, label: {
                        MessageIcon()
                    })
                
            }
            .frame(
                width:UIScreen.main.bounds.width-24, height: 40)
       
    }
}



struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
