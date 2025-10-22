//
//  AuthData.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import FirebaseAuth

struct AuthData {
    let uid: String
    let email: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
    }
    
    init(email: String) {
        uid = UUID().uuidString
        self.email = email
    }
}

extension AuthData {
    static var mock: Self {
        .init(email: "perro@mail.com")
    }
}
