//
//  AlertDisplayable.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 24/10/25.
//

import Foundation

@MainActor
protocol AlertDisplayable: AnyObject {
    var alert: AppAlert? { get set }
}
