//
//  HomeNavigation.swift
//  Koen
//
//  Created by Guen on 23/06/2023.
//

import SwiftUI

struct HomeNavigation: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Welcome 👋")
                    .font(.custom(Poppins.Regular.rawValue, size: 18))
                
                Text("Rachel Manuel")
                    .font(.custom(Poppins.Bold.rawValue, size: 24))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Image(systemName: "bell.badge.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
            }

            
        }
    }
}

struct HomeNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
