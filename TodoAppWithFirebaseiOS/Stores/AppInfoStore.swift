//
//  AppInfoStore.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import Foundation

final class AppInfoStore {
    let name: String = "Todo App"
    let description: String = "This app includes firebase auth and firebase databases"
    let developer: String = "Alejandro Salazar Cruz"
    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "-"
    }
    var compatibility: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)+"
        }
        return "-"
    }
}
