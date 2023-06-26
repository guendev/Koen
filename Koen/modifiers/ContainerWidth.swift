//
//  ContainerWidth.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct ContainerWidthModifier: ViewModifier {
    @Binding var containerWidth: CGFloat
    
    func body(content: Content) -> some View {
        content.background(
            GeometryReader { geometry in
                Color.clear
                    .onAppear {
                        containerWidth = geometry.size.width
                    }
                    .onChange(of: geometry.size.width) { newWidth in
                        containerWidth = newWidth
                    }
            }
        )
    }
}

extension View {
    func containerWidth(_ containerWidth: Binding<CGFloat>) -> some View {
        self.modifier(ContainerWidthModifier(containerWidth: containerWidth))
    }
}
