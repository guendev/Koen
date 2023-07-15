//
//  UpgradeFooter.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct UpgradeFooter: View {
    var body: some View {
        VStack(spacing: 15) {
            
            Button {
                
            } label: {
                
                Text("Start free trial")
                    .customButtonStyle(block: true, color: .accentColor, size: .large)
                
            }
            
            Text("Uprade any time")
                .font(.subheadline)
                .foregroundColor(Color.accentColor.opacity(0.7))
            
        }
        .padding(.vertical, 18)
        .padding(.horizontal)
    }
}

struct UpgradeFooter_Previews: PreviewProvider {
    static var previews: some View {
        Upgrade()
    }
}
