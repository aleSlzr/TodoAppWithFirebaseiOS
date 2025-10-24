//
//  View+Button.swift
//  TodoAppWithFirebaseiOS
//
//  Created by Alejandro Salazar on 24/10/25.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.smooth, value: configuration.isPressed)
    }
}

enum ButtonStyleOption {
    case press, plain
}

extension View {
    @ViewBuilder
    func button(_ option: ButtonStyleOption = .plain, action: @escaping () -> Void) -> some View {
        switch option {
        case .press:
            self.pressableButton(action: action)
        case .plain:
            self.plainButton(action: action)
        }
    }
    
    private func plainButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private func pressableButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PressableButtonStyle())
    }
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Primary button: Press")
                .primaryButton()
                .button(.press) {
                    
                }
            
            Text("Primary button: Plain")
                .primaryButton()
                .button {
                    
                }
        }
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
}

