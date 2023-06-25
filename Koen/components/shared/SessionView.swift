//
//  SessionView.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct SessionView<Content>: View where Content: View {
    let title: String
    var content: () -> Content
    var right: () -> Content?
    // @ViewBuilder var right: Right
    
    init(
        title: String,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder right: @escaping () -> Content? = { nil }
    ) {
        self.title = title
        self.content = content
        self.right = right
    }
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text(title)
                    .font(.custom(Poppins.SemiBold.rawValue, size: 20))
                
                Spacer()
                
                right()
            }
            .padding(.horizontal)
            
            content()
        }
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

