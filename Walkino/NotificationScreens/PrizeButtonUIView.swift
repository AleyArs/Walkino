//
//  PrizeButtonUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 9.12.2022.
//

import SwiftUI

struct PrizeButtonUIView: View {
    var body: some View {
     
        VStack{
            Text("Ödülü Al")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .cornerRadius(7)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color.init(red: 0.965, green: 0.224, blue: 0.49))
            Text("Websitesine Git")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .cornerRadius(7)
                .font(.system(size: 12))
                .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.init(red: 0.965, green: 0.224, blue: 0.49)))
            
            
        }
        
    }
}

struct ActivityButton : View {
    var body: some View {
        VStack{
            Text("Etkinliğe Katıl")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .foregroundColor(.white)
                .background(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                .cornerRadius(7)
            Text("Websitesine Git")
                .frame(
                    width:UIScreen.main.bounds.width-24, height: 40)
                .font(.system(size: 18))
                .cornerRadius(7)
                .font(.system(size: 12))
                .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.init(red: 0.965, green: 0.224, blue: 0.49)))
            
            
        }
        
    }
}

struct PrizeButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        PrizeButtonUIView()
    }
}
