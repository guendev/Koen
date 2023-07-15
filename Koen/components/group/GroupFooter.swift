//
//  GroupFooter.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupFooter: View {
    var body: some View {
        HStack(spacing: 10) {
            
            Button {
                
                withAnimation {
                    //
                }
                
            } label: {
                
                Image(systemName: "brain")
                    .customButtonStyle(color: .warn, size: .large)
                
            }
            
            
            Button {
                
            } label: {
                
                Text("START LEARNING")
                    .customButtonStyle(block: true, color: .accentColor, size: .large)
                
            }
            
        }
        .padding(.vertical, 18)
        .padding(.horizontal)
    }
}

struct GroupFooter_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
