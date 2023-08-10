//
//  CategoryModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 11.09.2022.
//

import Foundation
import UIKit

struct CategoryModel : Identifiable {
    var id = UUID() // Değiştir
    var filter : String
    var text: String
    var photo: String
    var prizepages : [PrizePage]
}

struct PrizePage : Identifiable{
    var id = UUID()
    var type: String
    var title: String
    var goldStepp: Int
    var date: String
    var descriptionImg: String
    var mainImage: String
}

let category1 = CategoryModel(filter: "1", text: "Ödüller", photo: "mangaa", prizepages: [awards, otherAwards])
let category2 = CategoryModel(filter: "2", text: "Bağış", photo: "topWalk", prizepages: [donation1])
let category3 = CategoryModel(filter: "3", text: "çekiliş", photo: "topWalk", prizepages: [])
   
let awards =  PrizePage(type: "", title: "yemek sepeti", goldStepp: 25, date: "31 haziran", descriptionImg: "mangaa", mainImage: "mangaa")
let otherAwards = PrizePage(type: "", title: "trendyol", goldStepp: 67, date: "29 aralık", descriptionImg: "topWalk",mainImage: "mangaa")

let donation1 = PrizePage(type: "", title: "kimsesiz çocuk vakfı", goldStepp: 87, date: "1 Ocak", descriptionImg: "mmangaa", mainImage: "mangaa")


let awardslist = [category1, category2, category3]






//let prizetest = [PrizePage].self()
/* ScrollView(.horizontal){
 HStack(spacing:20){
     ForEach(Array(zip(self.tabBarOptions.indices, self.tabBarOptions)),
             id:\.0,
/* content:{ index, name  in
         CategoryView(currentTab: self.$currentTab, tab: index, tabBarItemName: name, categoryModel: CategoryModel)
     })*/
}
}.padding(7)*/












