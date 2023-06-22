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
                .fill(Color("Gray"))
                .frame(maxWidth: 300)
            
            VStack(spacing: 46) {
                VStack(spacing: 8) {
                    Text("Choose your best class")
                        .foregroundColor(.white)
                        .font(.custom(Poppins.SemiBold.rawValue, size: 36))
                        .multilineTextAlignment(.center)
                    
                    
                    Text("Various types of learning are available here according to what you need")
                        .foregroundColor(Color("Gray"))
                        .font(.custom(Poppins.Regular.rawValue, size: 14))
                        .multilineTextAlignment(.center)
                }
                
                Button {
                    
                } label: {
                    Text("Get Started")
                }
                .font(.custom(Poppins.Medium.rawValue, size: 18))
                .foregroundColor(Color("Primary"))
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(Color.white)
                .cornerRadius(12)
            }
            .frame(maxWidth: 300)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Primary"))
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
