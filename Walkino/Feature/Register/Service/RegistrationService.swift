//
//  RegistrationService.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 12.03.2023.
//
import Combine
import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import FirebaseFirestore
import FirebaseDatabase

enum RegistrationKeys: String {
    case userName
   // case birthday
    case occupation
}

protocol RegistrationService {
    func register(with details: RegistrationDetails) -> AnyPublisher <Void, Error>
}

final class RegistrationServiceImpl: RegistrationService {
    
    func register(with details: RegistrationDetails) -> AnyPublisher <Void, Error> {
        Deferred {
            Future { promise in
                Auth.auth()
                       .createUser(withEmail: details.email,
                                password: details.password){ res, error in
                        
                        if let err = error {
                            promise(.failure(err))
                        } else {
                            if let uid = res?.user.uid {
                                let values = [RegistrationKeys.userName.rawValue: details.userName,
                                             // RegistrationKeys.birthday.rawValue: details.birthday,
                                              RegistrationKeys.occupation.rawValue: details.occupation] as [String : Any]
                            Database.database()
                                    .reference()
                                    .child("users")
                                    .child(uid)
                                    .updateChildValues(values) { error, ref in
                                        if let err = error{
                                            promise(.failure(err))
                                        } else {
                                            promise(.success(()))
                                        }
                                    }
                            } else {
                                promise(.failure(NSError(domain: "Invalid User Id", code: 0, userInfo: nil)))
                            }
                        }
                    }
            }
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
    }
}

