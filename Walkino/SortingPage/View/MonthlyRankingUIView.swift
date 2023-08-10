//
//  MonthlyRankingUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.12.2022.
//

import SwiftUI

struct MonthlyRankingUIView: View {
    var topSortingList : [TopSorting] = TopSortingList.three
    var body: some View {
        List(topSortingList, id:\.rank){
            sortingListEx in
            SortingRow(sortingRow: sortingListEx)
                .listRowSeparator(.hidden)
        }.listStyle(PlainListStyle())
        .onAppear(perform: {
                UITableView.appearance().contentInset.top = -35
            })
    }
}

struct MonthlyRankRow: View {
    let sortingRow : Sorting
    var body: some View {
        VStack{
            HStack(spacing:65){
            HStack{
                Text(String(sortingRow.rank))
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)
                    .font(.system(size: 12))
                
                Image(sortingRow.photoUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading,spacing: 2){
                    Text(sortingRow.userName)
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                        .frame(width: 100, height: 25)
                    
                    Text(sortingRow.name)
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .foregroundColor(.secondary)
                    
                }
            }
            
            Text(sortingRow.data)
                .font(.system(size: 12))
                .foregroundColor(.black)
                .bold()
        }
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: Color.init(red: 0.973, green: 0.976, blue: 0.98), radius: 4.15, y: 2.76)
     }
        
    }
}

struct MonthlyRankingUIView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyRankingUIView()
    }
}
