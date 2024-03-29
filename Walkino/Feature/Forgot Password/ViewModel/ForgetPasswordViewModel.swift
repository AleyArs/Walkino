//
//  ForgetPasswordViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 21.03.2023.
//

import Foundation
import Combine

protocol ForgotPasswordViewModel {
    func sendPasswordReset()
    var service: ForgotPasswordService { get }
    var email: String { get }
    init(service: ForgotPasswordService)
}

final class ForgotPasswordViewModelImpl: ObservableObject, ForgotPasswordViewModel {
    
    @Published var email: String = ""
    let service: ForgotPasswordService
    private var subscription = Set<AnyCancellable>()
    
    init(service: ForgotPasswordService) {
        self.service = service
    }
    
    func sendPasswordReset() {
        service
            .sendPasswordReset(to: email)
            .sink{ res in
                
                switch res {
                case .failure(let err):
                    print("Failed: \(err) ")
                default: break
                }
            } receiveValue: {
                print("Sent Password Reset Request")
            }
            .store(in: &subscription)
    }
}
