//
//  model.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.09.2022.
//


import Foundation
import UIKit
//Bağış Kampanyaları Modeli
struct PrizeListPage : Identifiable{
    let id = UUID()
    let type: String
    let title: String
    let goldStepp: Int
    let date: String
    let descriptionImg: String
    let mainImage: String
}

struct PrizeList {
    static let five = [
        PrizeListPage(type: "1", title: "Kimsesiz Çocuk Vakfı", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk"),
        PrizeListPage(type: "1", title: "Kanserli Çocuk", goldStepp: 490, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk"),
        PrizeListPage(type: "2", title: "trendyol", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk"),
        PrizeListPage(type: "2", title: "boyner", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk"),
        PrizeListPage(type: "3", title: "maşa", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk"),
        PrizeListPage(type: "3", title: "altın böcek", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "topWalk")
     ]
}


