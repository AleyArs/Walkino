//
//  RegistrationViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 12.03.2023.
//

import Foundation
import Combine

enum RegistrationState {
    case sucessful
    case failed(error: Error)
    case na
}

protocol RegistrationViewModel{
    func register()
    var hasError: Bool { get }
    var service: RegistrationService { get }
    var state: RegistrationState { get }
    var userDetails: RegistrationDetails { get }
    init(service: RegistrationService)
}

final class RegistrationViewModelImpl: ObservableObject, RegistrationViewModel {
    
    @Published var hasError: Bool = false
    @Published var state: RegistrationState = .na
    
    let service: RegistrationService
    
    @Published var userDetails: RegistrationDetails = RegistrationDetails.new
    
    private var subscriptions = Set<AnyCancellable>()
    
    init(service: RegistrationService){
        self.service = service
        setupErrorSubscriptions()
    }
    func register() {
        service
            .register(with: userDetails)
            .sink { [weak self] res in
                switch res {
                case .failure(let error):
                    self?.state = .failed(error: error)
                default: break
                }
                
            } receiveValue: { [weak self] in
                self?.state = .sucessful
            }
            .store(in: &subscriptions)
    }
}

private extension RegistrationViewModelImpl {
    
    func setupErrorSubscriptions() {
         
        $state
            .map { state -> Bool in
                switch state {
                case .sucessful,
                        .na:
                    return false
                case .failed:
                    return true
                }
                
            }
            .assign(to: &$hasError)
    }
}
