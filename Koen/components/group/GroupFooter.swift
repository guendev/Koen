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
                
            } label: {
                
                Text("BACK")
                    .font(.custom(Poppins.SemiBold.rawValue, size: 16))
                    .foregroundColor(.white)
                    .tracking(0.05)
                    .lineSpacing(18)
                
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 19)
            .background(Color("Waring"))
            .cornerRadius(20)
            .clipped()
            .shadow(color: Color("Waring").opacity(0.5), radius: 1)
            
            
            Button {
                
            } label: {
                
                Text("START LEARNING")
                    .font(.custom(Poppins.SemiBold.rawValue, size: 16))
                    .foregroundColor(.white)
                    .tracking(0.05)
                    .lineSpacing(18)
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 15)
            .background(Color("Primary"))
            .cornerRadius(20)
            .clipped()
            .shadow(color: Color("Primary").opacity(0.5), radius: 8)
            
        }
        .padding(.vertical, 18)
        .padding(.horizontal)
        .background(Color.white)
    }
}

struct GroupFooter_Previews: PreviewProvider {
    static var previews: some View {
        GroupFooter()
    }
}
