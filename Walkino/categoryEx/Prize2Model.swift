//
//  Prize2Model.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 17.10.2022.
//

import Foundation
import UIKit
//Ödüller Modeli
struct Prize2ListPage {
    let sıra: Int
    let type: String
    let title: String
    let sumStep: Int
    let goal: Int
    let percent: Float 
    let date: String
    let descriptionImg: String
    let mainImage: String
}

struct Prize2List {
    static let five = [
        Prize2ListPage(sıra: 1, type: "bagıs", title: "Birbirimiz için Bağış Kampanyası", sumStep: 634000, goal: 1000000, percent: 0.6, date: "2haziran", descriptionImg: "donation1", mainImage: "donation1"),
        Prize2ListPage(sıra: 2, type: "bagıs", title: "Çocuklarımız için Bağış Kampanyası", sumStep: 149000, goal: 1000000, percent: 0.14, date: "2haziran", descriptionImg: "donation2", mainImage: "donation2")
     ]
}
