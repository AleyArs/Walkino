//
//  CommonListViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 29.11.2022.
//

import Foundation

class CommonViewModel: ObservableObject {
    @Published var offer : [FollowerUser] = []
    @Published var filteredOffer : [FollowerUser] = []
    
}

