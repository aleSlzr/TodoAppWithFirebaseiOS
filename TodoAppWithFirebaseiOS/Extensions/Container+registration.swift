//
//  Container+registration.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import Factory

extension Container {
    var appInfoStore: Factory<AppInfoStore> {
        self {
            MainActor.assumeIsolated {
                AppInfoStore()
            }
        }.singleton
    }
    
    var authStore: Factory<any AuthStoreProtocol> {
        self {
            MainActor.assumeIsolated {
                AuthStore()
            }
        }.singleton
    }
}
