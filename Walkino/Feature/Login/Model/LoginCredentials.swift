//
//  LoginCredentials.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 16.03.2023.
//

import Foundation

struct LoginCredentials {
    var email: String
    var password: String
}

extension LoginCredentials {
    static var new : LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
    
}
