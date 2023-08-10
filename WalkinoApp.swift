//
//  WalkinoApp.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 10.01.2023.
//

import Foundation
import SwiftUI
import Firebase

final class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) ->Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct WalkinoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var sessionService = SessionServiceImpl()
    var body: some Scene{
        WindowGroup{
            NavigationView{
                switch sessionService.state{
                case .loggedIn:
                    CustomTabUIView()
                        .environmentObject(sessionService)
                case .loggedOut:
                    LoginView()
                }
            }
        }
    }
}
