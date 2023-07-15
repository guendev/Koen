//
//  StretchyHeader.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI

struct StretchyHeader<Content>: View where Content: View {
    var content: () -> Content
    
    init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader { geometry in
            GeometryReader { innerGeometry in
                content()
                    .frame(height: innerGeometry.frame(in: .global).minY > 0 ? geometry.size.height + innerGeometry.frame(in: .global).minY : nil)
                    .offset(y: -innerGeometry.frame(in: .global).minY)
                }
                .frame(height: geometry.size.height)
            .edgesIgnoringSafeArea(.top)
        }
    }
}
