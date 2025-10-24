//
//  View+Ext.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 24/10/25.
//

import SwiftUI

extension View {
    func primaryButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .shadow(.regular)
    }
    
    func destructiveButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.destructive)
            .cornerRadius(.button)
            .shadow(.regular)
    }
    
    func plainButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.text)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Primary Button")
                .primaryButton()
                .button(.press) {
                }
            
            Text("Destructive Button")
                .destructiveButton()
                .button(.press) {
                }
            
            Text("Plain Button")
                .plainButton()
                .button {
                }
        }
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
}
