//
//  MonthlyTopSortingUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.12.2022.
//

import SwiftUI

struct MonthlyTopSortingUIView: View {
    var topSortingList : [TopSorting] = TopSortingList.three
    var body: some View {
        HStack(spacing:25){
                  ForEach(topSortingList.zigZagRankSort(), id:\.rank) { list in
                      VStack{
                          if list.rank == 1{
                              Image("King")
                          }
                          Image(list.photoUrl)
                              .resizable()
                              .scaledToFill()
                              .frame(width: 77, height: 77)
                              .clipShape(Circle())
                              .shadow(radius: 8)
                              .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15)
                              .padding(.top, 8)
                          Text(list.userName)
                              .font(.system(size: 12))
                              .foregroundColor(.secondary)
                          Text(list.data)
                              .bold()
                              .font(.system(size: 12))
                              .foregroundColor(.black)
          }.padding(.bottom, list.rank == 1 ? 85 : nil)
        }
        }.offset(y: 40)
    }
}

struct MonthlyTopSortingUIView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyTopSortingUIView()
    }
}
