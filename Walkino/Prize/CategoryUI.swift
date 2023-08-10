import SwiftUI

struct CategoryUI: View {
    @State var currentTab: Int = 0
    var body: some View {
        ZStack(alignment:.top) {
            TabView(selection:self.$currentTab){
                Prize2UIView().tag(0)
                PrizeUIView().tag(1)
                Priza3UIView().tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            .padding(.top,76)
            CategoryScroll(currentTab: self.$currentTab)
        }
    }
}

struct CategoryScroll:  View {
    var tabBarOptions: [String] = ["Bağışlar", "Ödüller", "Çekilişler"]
    @Binding var currentTab : Int 
    var body: some View {
          ScrollView(.horizontal){
              HStack(spacing:20){
                  ForEach(Array(zip(self.tabBarOptions.indices, self.tabBarOptions)),
                          id:\.0,
                          content: {
                      index, name in
                      CategoryView(currentTab: self.$currentTab, tab: index, tabBarItemName: name)
          })
        }
    }.padding(7)
    .background(Color.white)
}

struct CategoryView: View {
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
                        .frame(width: 107, height: 47)
                        .shadow(color: .white, radius: 17.61)
                if currentTab == tab {
                    Color.init( red: 0.965, green: 0.224, blue: 0.49)
                        .frame(height: 2)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
       .buttonStyle(.plain)
    }
  }
}



struct CategoryUI_Previews: PreviewProvider {
    static var previews: some View {
        CategoryUI()
    }
}





