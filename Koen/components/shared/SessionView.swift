//
//  SessionView.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct SessionView<Content: View, Right: View>: View {
    let title: String
    var content: Content?
    var right: Right?
    
    init(title: String, @ViewBuilder content: () -> Content? = { nil }, @ViewBuilder right: () -> Right? = { nil }) {
        self.title = title
        self.content = content()
        self.right = right()
    }
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text(title)
                    .font(.custom(Poppins.SemiBold.rawValue, size: 20))
                
                Spacer()
                
                right
            }
            .padding(.horizontal)
            
            content
            
            Spacer()
        }
    }
}
