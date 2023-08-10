//
//  TabBarUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.10.2022.
//

import SwiftUI

enum Tab : String, CaseIterable{
    case house
    case star
    case group
    case sort
    case person
}
struct TabBarUIView: View {
    @Binding var selectedTab: Tab
    private var fillImage: String{
        selectedTab.rawValue + ".fill"
    }
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id:\.rawValue){ tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage: tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0 )
                        .foregroundColor(selectedTab == tab ? .init( red: 0.965, green: 0.224, blue: 0.49): .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)){
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(8)
            .padding()
        }
    }
}
struct TabBarUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarUIView(selectedTab: .constant(.house))
    }
}
