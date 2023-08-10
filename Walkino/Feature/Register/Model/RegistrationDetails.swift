//
//  RegistrationDetails.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 12.03.2023.
//

import Foundation

struct RegistrationDetails{
    var email: String
    var password: String
    var userName: String
    //var birthday: Date
    var occupation: String
}

extension RegistrationDetails {
    static var new: RegistrationDetails{
        RegistrationDetails(email: "",
                            password: "",
                            userName: "",
                           // birthday: Date.now.addingTimeInterval(86400),
                            occupation: "")
    }
}
