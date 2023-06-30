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
                    .font(.kumbh(size: 18))
                    .fontWeight(.medium)
                
                Text("Rachel Manuel")
                    .font(.kumbh(size: 24))
                    .fontWeight(.semibold)
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
