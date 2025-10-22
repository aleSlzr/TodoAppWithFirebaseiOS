//
//  AuthStoreProtocol.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import Foundation
import Combine

@MainActor
protocol AuthStoreProtocol {
    var authUpdate: Date { get set }
    var authUpdatePublisher: AnyPublisher<Date, Never> { get }
    
    func getAuthenticatedUser() -> AuthData?
    
    @discardableResult
    func signIn(email: String, password: String) async throws -> AuthData
    
    @discardableResult
    func signUp(email: String, password: String) async throws -> AuthData
    
    func resetPassword(email: String) async throws
    
    func signOut() throws
}
