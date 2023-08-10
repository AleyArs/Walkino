//
//  CustomTabUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 4.11.2022.
//

import SwiftUI

struct CustomTabUIView: View {
    @State var currentTab = "star"
    @EnvironmentObject var userInfo: UserInfo
    @EnvironmentObject var sessionService: SessionServiceImpl
    
    var body: some View {
        TabView(selection: $currentTab){
            StepPartView()
                    .tabItem{
                        HStack{
                        Image(systemName:  "house")
                        Text("Anasayfa")
                        }
                    }
            SwiftUIView()
                    .tabItem{
                        HStack{
                        Image(systemName: "star")
                        Text("Sana Özel")
                        }
                    }
            SosyalUIView()
                    .tabItem{
                        HStack{
                        Image(systemName: "person.3")
                        Text("sosyal")
                        }
                      }
            SortingUIView()
                        .tabItem{
                            HStack{
                            Image(systemName: "flag.2.crossed")
                            Text("Sıralama")
                            }
        }
            ProfileUIView()
                 .tabItem{
                     HStack{
                     Image(systemName: "person")
                     Text("profil")
                     }
     }
   }
        .accentColor(Color.init( red: 0.965, green: 0.224, blue: 0.49))
  }
}
 

struct CustomTabUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabUIView()
    }
}
