//
//  ActivityDetailsScrollUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 12.12.2022.
//

import SwiftUI

struct ActivityDetailsScrollUIView: View {
    @State var currentTab: Int = 0
    var body: some View {
        ZStack(alignment:.top){
            TabView(selection:self.$currentTab){
                AboutEvents().tag(0)
                EventsSortList().tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            .padding(.top,38)
            .frame(
                width:UIScreen.main.bounds.width-24)
            ActivityScroll(currentTab: self.$currentTab)
        }
    }
}
struct ActivityScroll:  View {
    var tabBarOptions: [String] = ["Etkinlik Hakkında", "Sıralama"]
    @Binding var currentTab : Int
    var body: some View {
          ScrollView(.horizontal){
              HStack(spacing:20){
                  ForEach(Array(zip(self.tabBarOptions.indices, self.tabBarOptions)),
                          id:\.0,
                          content: {
                      index, name in
                      ActivityView(currentTab: self.$currentTab, tab: index, tabBarItemName: name)
          })
        }.frame(
            width:UIScreen.main.bounds.width-24)
    }.padding(7)
    .background(Color.white)
}

struct ActivityView: View {
    @Binding var currentTab: Int
    var tab : Int
    var tabBarItemName: String
    var body: some View{
        Button{
            self.currentTab = tab
        } label: {
            VStack{
                Text(tabBarItemName)
                        .font(.system(size: 12))
                        .multilineTextAlignment(.center)
                        .frame(width: 187, height: 22)
                        .shadow(color: .white, radius: 17.61)
                if currentTab == tab {
                    Color.black
                        .frame(width: 200,height: 1)
                } else {
                    Color.secondary.frame(width: 200, height: 1)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
       .buttonStyle(.plain)
    }
  }
}

struct AboutEvents: View {
    var ımage : String = "mangaa"
    var body: some View{
         ScrollView {
            VStack {
              Image(ımage)
                    .resizable()
                    .frame(
                        width:30,height: 50)//UIScreen.main.bounds.width-24, height: 369)
                Spacer()
            }
        }
    }
}
struct EventsSortList : View {
    @State private var singleSelection: UUID?
    var eventSort : [ActivityModel] = ActivityModelList.activityList
    var body: some View{
        List(selection: $singleSelection) {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ForEach(eventSort, id: \.sıra){ region in
                        ForEach(region.ActivitySort, id: \.order){sea in
                            EventsSort(eventSort: sea)
                    }
                  }
               }
            }
         }
      }
   }


struct EventsSort: View {
    var eventSort : activitySort
    var body: some View {
        HStack{
            Image(eventSort.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(60)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            VStack(alignment: .leading){
                Text("\(eventSort.firstname)\(eventSort.lastname)")
                    .font(.system(size: 12))
                Text(eventSort.nickname)
                    .fontWeight(.light)
                    .font(.system(size: 12))
            }
            Spacer()
            }
        .frame(width:UIScreen.main.bounds.width-24, height: 56)
           .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
        
        }
    }

struct EventsTotalUser: View {
    var eventTotalUser : totalUser
    var body: some View {
        HStack{
            Image(eventTotalUser.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(60)
                .clipShape(Circle())
                .shadow(radius: 2)
                .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
            VStack(alignment: .leading){
                Text("\(eventTotalUser.firstname)\(eventTotalUser.lastname)")
                    .font(.system(size: 12))
                Text(eventTotalUser.nickname)
                    .fontWeight(.light)
                    .font(.system(size: 12))
            }
            Spacer()
            }
        .frame(width:UIScreen.main.bounds.width-24, height: 56)
           .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 26.62)
        
        }
    }



struct ActivityDetailsScrollUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailsScrollUIView()
    }
}
