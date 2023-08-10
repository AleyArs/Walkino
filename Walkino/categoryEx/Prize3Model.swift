//
//  Prize3Model.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import Foundation
import UIKit
//Çekilişler Modeli
struct Prize3ListPage {
    let sıra: String
    let type: String
    let title: String
    let goldStepp: Int
    let date: String
    let descriptionImg: String
    let mainImage: String
}

struct Prize3List {
    static let five = [
        Prize3ListPage(sıra:"1" ,type: "1", title: "Kimsesiz Çocuk Vakfı", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa"),
        Prize3ListPage(sıra:"2",type: "1", title: "Kanserli Çocuk", goldStepp: 490, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa"),
        Prize3ListPage(sıra:"3",type: "2", title: "trendyol", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa"),
        Prize3ListPage(sıra:"4",type: "2", title: "boyner", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa"),
        Prize3ListPage(sıra:"5",type: "3", title: "maşa", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa"),
        Prize3ListPage(sıra:"6",type: "3", title: "altın böcek", goldStepp: 340, date: "12 Ocak 2022", descriptionImg: "mangaa", mainImage: "mangaa")
     ]
}
