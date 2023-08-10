//
//  DuelOfferUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 24.11.2022.
//

import SwiftUI

struct DuelOfferUIView: View {
    var body: some View {
        VStack(spacing:149){
        Image("topWalk")
            .resizable()
            .frame(width: 121.15, height: 50)
        
            VStack(alignment:.leading, spacing: 8){
                Text("Düello Teklifi")
                Text("Göndermiş olduğun davet kabul edildiği andan itibaren 24 saat süren yarış başlıyor. En çok adım atan iddiaya konulan Altın Adımları kazanır!")
            }.font(.system(size: 12))
            
            Text("Teklifi Gönder")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 311, height: 40)
                .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                .cornerRadius(4)
        }
    }
}

struct DuelOfferUIView_Previews: PreviewProvider {
    static var previews: some View {
        DuelOfferUIView()
    }
}
