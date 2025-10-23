//
//  AppStartingView.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 22/10/25.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject private var viewModel: AppStartingViewModel = .init()
    
    var body: some View {
        Group {
            switch viewModel.appState {
            case .auth:
                Text("Auth view")
            case .app:
                NavigationStack {
                    Text("App View")
                }
            }
        }
        .animation(.spring, value: viewModel.appState)
    }
}

#Preview {
    AppStartingView()
}
