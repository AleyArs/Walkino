//
//  SessionService.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 15.03.2023.
//

import Combine
import Foundation
import FirebaseAuth
import FirebaseDatabase


enum SessionState {
    case loggedIn
    case loggedOut
}

protocol SessionService {
    var state : SessionState { get }
    var userDetails: SessionUserDetails? { get }
    
    func logout()
}

final class SessionServiceImpl: ObservableObject, SessionService {
    
    @Published var userDetails: SessionUserDetails?
    @Published var state: SessionState = .loggedOut
    
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        setupFirebaseAuthHandler()
    }
    
    func logout() {
       try? Auth.auth().signOut()
    }
}

private extension SessionServiceImpl{
    
    func setupFirebaseAuthHandler() {
        
        handler = Auth
            .auth()
            .addStateDidChangeListener { [weak self] res, user in
                guard let self = self else { return }
                self.state = user == nil ? .loggedOut: .loggedIn
                if let uid = user?.uid {
                    self.handleRefresh(with: uid)
                }
            }
    }
    func handleRefresh(with uid: String){
        
        Database
            .database()
            .reference()
            .child("users")
            .child(uid)
            .observe(.value) { [weak self] snapsshot  in
                
                guard let self = self,
                      let value = snapsshot.value as? NSDictionary,
                      let userName = value[RegistrationKeys.userName.rawValue] as? String,
                     // let birthday = value[RegistrationKeys.birthday.rawValue] as? Date,
                      let occupation = value[RegistrationKeys.occupation.rawValue] as? String else {
                    return
                }
                    DispatchQueue.main.async {
                        self.userDetails = SessionUserDetails(userName: userName,
                                                            //  birthday: birthday,
                                                              occupation: occupation)
         }
       }
    }
}
