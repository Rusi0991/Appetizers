//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/13/23.
//

import SwiftUI

struct StandartButtonStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View{
    func standartButtonStyle() -> some View {
        self.modifier(StandartButtonStyle())
    }
}
