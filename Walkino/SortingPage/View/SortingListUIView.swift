//
//  SortingListUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.10.2022.
//

import SwiftUI

struct SortingListUIView: View {
    var sortingList : [TopSorting] = TopSortingList.three
    var body: some View {
        List(sortingList, id:\.rank){
            sortingListEx in
            if sortingListEx.rank > 4 {
                SortingRow(sortingRow: TopSorting.init(rank: sortingListEx.rank, photoUrl: sortingListEx.photoUrl, userName: sortingListEx.userName, name: sortingListEx.name, data: sortingListEx.data))
                    .listRowSeparator(.hidden)
            }
            }.listStyle(PlainListStyle())
                .onAppear(perform: {
                    UITableView.appearance().contentInset.top = -35
                })
    }
}

struct SortingRow: View {
    let sortingRow : TopSorting
    var body: some View {
        VStack{
        HStack(spacing: 10){
            Text("\(sortingRow.rank) . ")
                .bold()
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
                .font(.system(size: 12))
                .padding(.leading, 25)
                
            Image(sortingRow.photoUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading,spacing: 2){
                
                Text(sortingRow.userName)
                    .foregroundColor(.black)
                    .font(.system(size: 12))
               
                Text(sortingRow.name)
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .foregroundColor(.secondary)
            
            }
            Spacer()
            Text(sortingRow.data)
                .font(.system(size: 12))
                .foregroundColor(.black)
                .bold()
                .padding(.trailing, 26)
        }
        .frame(
            width:UIScreen.main.bounds.width-24, height: 56
         )
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
        
     }
    }
}

struct SortingListUIView_Previews: PreviewProvider {
    static var previews: some View {
        SortingListUIView()
    }
}
