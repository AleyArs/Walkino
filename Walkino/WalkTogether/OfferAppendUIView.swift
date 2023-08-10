//
//  OfferAppendUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.10.2022.
//

import SwiftUI

struct OfferAppendUIView: View {
    
    var body: some View {
        VStack(alignment: .leading){
        Text("Yeni Bir Yürüyüş Başlat")
                .bold()
                .font(.system(size: 16))
                .padding(.bottom,4)
        Text("Birlikte yürüyüş teklifi gönder ve hedefi birlikte tamamla karşılıklı \ntakip ettiğin insanlarla vakit geçirmenin en eğlenceli yolu!")
            .font(.system(size: 12))}
        
    }
}

struct OfferAppendUIView_Previews: PreviewProvider {
    static var previews: some View {
        OfferAppendUIView()
    }
}
