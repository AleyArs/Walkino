//
//  AdditionalInfoUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.01.2023.
//

import SwiftUI

struct AdditionalInfoUIView: View {
    @State var bio: String = ""
    @State var name: String = ""
    var body: some View {
        VStack(spacing: 64){
            WalkImage()
            VStack(alignment: .leading , spacing: 22){
                Text("Ek Bilgiler")
                    .font(.system(size: 32))
                    .frame(height:24)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis id tellus ac ultrices. Aenean commodo")
                    .font(.system(size: 12))
            }
            .frame(width: UIScreen.main.bounds.width-32)
                .padding(.bottom,24)
            
            VStack{
                HStack{
                    HStack{
                        Image(systemName: "calendar.circle")
                            .foregroundColor(.gray)
                        
                        TextField("Boy(cm)", text:$bio )
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    .padding()
                    .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(20)
                    HStack{
                        Image(systemName: "flame.fill")
                            .foregroundColor(.gray)
                        
                        
                        TextField("Kilo(kg)", text:$bio )
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    .padding()
                    .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(20)
                }.frame(width: UIScreen.main.bounds.width-24)
                    .padding(.bottom)
                HStack{
                    Image(systemName: "building")
                        .foregroundColor(.gray)
                    
                    TextField("Kurum Kodu(Eğer varsa)", text:$name )
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }.padding()
                    .frame(width: UIScreen.main.bounds.width-32)
                    .background(Color.init( red: 0.973, green: 0.976, blue: 0.98))
                    .cornerRadius(20)
            }
            Spacer()
            LoginButtonFillContent()
                .padding(.bottom,78)
        }
        
    }
}

struct AdditionalInfoUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalInfoUIView()
    }
}
