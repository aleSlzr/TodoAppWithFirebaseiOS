//
//  TodoAppWithFirebaseiOSApp.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import SwiftUI
import FirebaseCore

@main
struct TodoAppWithFirebaseiOSApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AppStartingView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
