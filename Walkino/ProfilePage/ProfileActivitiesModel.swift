//
//  ProfileActivitiesModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 29.09.2022.
//

import Foundation

struct Activity : Identifiable {
    let id : Int
    let image: String
}

struct ActivityList {
    static let two = [
        Activity(id: 1, image: "topWalk"),
        Activity(id: 2, image: "mangaa"),
     ]
}
