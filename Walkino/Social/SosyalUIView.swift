//
//  SosyalUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 5.09.2022.
//

import SwiftUI

struct SosyalUIView: View {
    var body: some View {
        NavigationView(){
            VStack(spacing: 0.0){
                NavigationBarView()
                Spacer()
                ScrollView() {
                    NavigationLink(destination:
                                    WalkTogetherUIView()){
                    ImageRow()
                    }
                ImageRow(image: "duelTgr")
                }
            }
         .navigationBarTitle("")
         .navigationBarHidden(true)
    }
  }
}
struct SosyalUIView_Previews: PreviewProvider {
    static var previews: some View {
        SosyalUIView()
    }
}

/*struct friendsIcon: View {
    var body: some View {
        Image("arkadas").padding(.leading,25).padding(.trailing,85)
    }
}

struct walkIcon: View {
    var body: some View {
        Image("topWalk")
            .padding(.trailing)
    }
}

struct bellIcon: View {
    var body: some View {
        Image("zil").frame(width: 24.14, height: 23.88)
    }
}

struct messageIcon: View {
    var body: some View {
        Image("Icon")
        
            .padding(.trailing,26.63)
    }
}

struct topBarBody: View {
    var body: some View {
        
        
        
        HStack(spacing: 13.26) {
            friendsIcon()
            }
            HStack {
                walkIcon()
            }
            Spacer()
            HStack {
                bellIcon()
            }
            HStack {
                messageIcon()
            }
        
            
        

        .padding(.horizontal,10)
        .padding(.vertical, 3)
        Spacer ()
        
    }
    
}

    }

*/

struct friendsIcon: View {
    var body: some View {
        Image("arkadas")
            .padding(.leading,25)
            .padding(.trailing,85)
    }
}

struct ringIcon: View {
    var body: some View {
        Image("zil")
            .frame(width: 24.14, height: 23.88)
        //.padding(.trailing,13.26)
    }
}
struct friendIcon: View {
    var body: some View {
        Image("friend")
            .frame(width: 30, height: 20.83)
            .padding(.leading,24)
    }
}

struct MessageIcon: View {
    var body: some View {
        Image("Icon")
            .padding(.trailing,15.93)
    }
}

struct ImageRow: View {
    var image : String = "walkTgtr"
   
    var body: some View {
        VStack {
                Image(image, bundle: nil)
                    .resizable()
                    .frame(width: 327, height: 149)
                    .cornerRadius(7)
                    .padding(.vertical, 15.93)
                    .frame(
                        width:UIScreen.main.bounds.width-24, height:149)
            
        }.frame(
            width:UIScreen.main.bounds.width-24 )
        
    }
}
