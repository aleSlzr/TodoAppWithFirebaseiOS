//
//  ErrorDisplayable.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 24/10/25.
//

import Foundation

@MainActor
protocol ErrorDisplayable: AnyObject {
    var error: Error? { get set }
}
