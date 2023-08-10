//
//  Bırlestırme.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.01.2023.
//

import SwiftUI

struct B_rlest_rme: View {
   
    var body: some View {
        VStack{
            SeasonsDetailsProgressBar(bar: 0.7, goal: 5000000, comletedGoal: 3214629, name: "Adım", nameDesc: "Atılan Adım Sayısı")
            SeasonsDetailsProgressBar(bar: 0.2, goal: 250000, comletedGoal: 126673, name: "Basamak", nameDesc: "Çıkılan Basamak Sayısı")
            
            
        }
    }
}

struct B_rlest_rme_Previews: PreviewProvider {
    static var previews: some View {
        B_rlest_rme()
    }
}
