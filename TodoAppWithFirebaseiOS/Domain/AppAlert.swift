//
//  AppAlert.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 24/10/25.
//

import Foundation

struct AppAlert {
    let title: String
    let message: String
    let actionButton: ActionButton?
    
    init(
        title: String,
        message: String,
        actionButton: ActionButton? = nil
    ) {
        self.title = title
        self.message = message
        self.actionButton = actionButton
    }
}

extension AppAlert {
    struct ActionButton {
        let title: String
        let action: () -> ()
    }
}

extension AppAlert {
    static var mock1: Self {
        .init(
            title: "Sign up Error",
            message: "Make sure all fields are completed before procceding."
        )
    }
    
    static var mock2: Self {
        .init(
            title: "Sign Out",
            message: "Are you sure yu want to sign out?",
            actionButton: .init(
                title: "Sign Out",
                action: {}
            )
        )
    }
    
    static var empty: Self {
        .init(
            title: .empty,
            message: .empty
        )
    }
}
