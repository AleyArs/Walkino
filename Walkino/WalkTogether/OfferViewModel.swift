//
//  OfferViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.10.2022.
//

import Foundation

class OfferViewModel: ObservableObject {
    @Published var offer : [OtherUserProfileResponse] = []
    @Published var filteredOffer : [OtherUserProfileResponse] = []
    
    init(){
        addPeople()
    }
    func addPeople() {
        offer = OtherUserProfileResponseList.one
    }
        
}
