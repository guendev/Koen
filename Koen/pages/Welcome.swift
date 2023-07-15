//
//  Welcome.swift
//  Koen
//
//  Created by Guen on 22/06/2023.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack(spacing: 100) {
            Circle()
                .fill(Color.backgroud2)
                .frame(maxWidth: 300)
            
            VStack(spacing: 46) {
                VStack(spacing: 8) {
                    Text("Choose your best class")
                        .foregroundColor(.text)
                        .font(.kumbh(size: 36))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("Various types of learning are available here according to what you need")
                        .foregroundColor(.text)
                        .font(.kumbh(size: 15))
                        .multilineTextAlignment(.center)
                }
                
                Button {
                    
                } label: {
                    Text("Get Started")
                        .customButtonStyle(color: .accentColor, size: .large)
                }
            }
            .frame(maxWidth: 300)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroud)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
