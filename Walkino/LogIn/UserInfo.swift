//
//  UserInfo.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 23.02.2023.
//

import Foundation

class UserInfo: ObservableObject {
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuthenticated: FBAuthState = .undefined
    
    func configureFirebaseStateDidChange() {
        self.isUserAuthenticated = .signedOut
        //self.isUserAuthenticated = .signedIn
    }
}
