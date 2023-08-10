//
//  SortingUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.10.2022.
//

import SwiftUI

struct SortingUIView: View {
    @State var selectedTab : Tab = .person
    @State var choiceMade = "options"
   
    var body: some View {
        NavigationView{
            VStack(spacing: 0.0) {
                NavigationBarView()
        VStack{
            Spacer()
        Menu{
            Button(action: {
                choiceMade = "Takip Ettiklerin"
            }, label: {
                Text("Takip Ettiklerin")
            })
            Button(action: {
                choiceMade = "Aylık Sıralama"
            }, label: {
                Text("Aylık Sıralama")
            })
            Button(action: {
                choiceMade = "Seni takip edenler"
            }, label: {
                Text("Seni takip edenler")
            })
            Button(action: {
                choiceMade = "Senin takip edenler"
            }, label: {
                Text("Senin takip edenler")
            })
        } label: {
            VStack(spacing: 16){
            HStack(spacing: 177){
                if choiceMade == "Takip Ettiklerin" {
                    Text("Takip Ettiklerin")
                } else if choiceMade == "Aylık Sıralama"{
                    Text("Aylık Sıralama")
                } else {
                    Text("Takip Ettiklerin")
                }
               
                Image(systemName: "arrowtriangle.down.fill")
                    .scaleEffect(0.7)
            }
            .frame(
                width:UIScreen.main.bounds.width-24, height: 30
             )
            .font(.system(size: 12))
            .foregroundColor(.black)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
            .offset( y: 15)
        }
        }
        if (choiceMade == "Takip Ettiklerin"){
            TopSortingUIView()
            SortingListUIView()
               }
            else if (choiceMade == "Aylık Sıralama"){
                MonthlyTopSortingUIView()
                MonthlyRankingUIView()
            }
            else if (choiceMade == "Seni takip edenler"){
                Text("Seni takip edenler")
            }
            else if (choiceMade == "Senin takip edenler"){
                Text("Senin takip edenler")
            }
            else {
                TopSortingUIView()
                SortingListUIView()
            }
        }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        
    }
}
struct SortingUIView_Previews: PreviewProvider {
    static var previews: some View {
        SortingUIView()
    }
}
