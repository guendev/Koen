//
//  ButtonDesign.swift
//  Koen
//
//  Created by Guen on 27/06/2023.
//

import SwiftUI

enum ButtonSize2 {
    case `default`
}

struct ButtonPrimaryModifier: ViewModifier {
    var color: Color = .accentColor
    var size: ButtonSize = .default
    var block: Bool = false
    var shadow: Bool = true
    var radius: CGFloat = 20
    
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 19)
            .frame(height: 52)
            .frame(maxWidth: block ? .infinity : nil)
            .background(color)
            .cornerRadius(radius)
            .clipped()
            .shadow(color: shadow ? color.opacity(0.4) : .clear, radius: shadow ? 6 : 0, x:0, y: 4)
    }
}

extension View {
    func applyButton(_ color: Color = Color.accentColor, size: ButtonSize = .default, block: Bool = false, shadow: Bool = true, radius: CGFloat = 20) -> some View {
        self.modifier(ButtonPrimaryModifier(color: color, size: size, block: block, shadow: shadow, radius: radius))
    }
}

