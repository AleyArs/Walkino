//
//  GoldAwardAppendUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import SwiftUI

struct GoldAwardAppendUIView: View {
    var GoldList : [GoldAward] = GoldAwardList.goldAwardList
    @State var bcd: Int = 200
    var body: some View {
    ScrollView(.horizontal){
       HStack(spacing:6){
        //TotalGoldMoneyView(asd: $bcd)
       ForEach(GoldList, id:\.level){
            goldList in
            if goldList.claimed == true {
                OkUI()
            }else if goldList.claimable == true {
                    GetAwardsButton(asd: $bcd)
            }else if goldList.levelPercent == 0 {
                LockFillUI( goal: goldList.goal)
            } else {
                LockFill2UI( percent: CGFloat(goldList.levelPercent), goal: goldList.goal)
            }
          }
        }.frame(
        width:UIScreen.main.bounds.width-24, height: 62)
        
    }
  }
}

struct GoldAwardAppendUIView_Previews: PreviewProvider {
    static var previews: some View {
        GoldAwardAppendUIView()
    }
}
