//
//  TopSortingModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 27.11.2022.
//

import Foundation

struct TopSorting: RankingProtocol {
    let rank : Int
    let photoUrl: String
    let userName: String
    let name: String
    let data : String
}
protocol RankingProtocol{
    var rank : Int {get}
}

struct TopSortingList {
    static let three = [
        TopSorting(rank: 1, photoUrl: "mangaa", userName: "user1", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 2, photoUrl: "mangaa", userName: "user2", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 3, photoUrl: "mangaa", userName: "user3", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 4, photoUrl: "mangaa", userName: "user4", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 5, photoUrl: "mangaa", userName: "user5LHUKGYJFGKHGJFJGKGKH", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 6, photoUrl: "mangaa", userName: "user6", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 7, photoUrl: "mangaa", userName: "user7", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 8, photoUrl: "mangaa", userName: "user8", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 9, photoUrl: "mangaa", userName: "user9", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 10, photoUrl: "mangaa", userName: "user10", name: "aliş", data: "1345Ap"),
        TopSorting(rank: 11, photoUrl: "mangaa", userName: "user11", name: "us1", data: "2824Ap"),
        TopSorting(rank: 12, photoUrl: "mangaa", userName: "user12", name: "us2", data: "2000Ap"),
        TopSorting(rank: 13, photoUrl: "mangaa", userName: "user13", name: "us3", data: "600Ap")
     ]
}
extension Array where Element : RankingProtocol{
    func zigZagRankSort() -> Self{
        var new: Self = []
        for (idx, item) in self.sorted(by: { lhs, rhs in
            lhs.rank < rhs.rank
        }).enumerated(){
            if idx % 2 != 0{
                new.insert(item, at: 0)
            }else{
                new.append(item)
            }
        }
        return new
    }
}



