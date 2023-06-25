//
//  Home.swift
//  Koen
//
//  Created by Guen on 22/06/2023.
//

import SwiftUI

struct Home: View {
    
    var context: HomeContext = .init()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HomeNavigation()
                    .padding(.horizontal)
                
                HomeBanner()
                    .padding(.horizontal)
                
                HomeCategory()
                
                HomeRecomendations()
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("Background"))
        .environmentObject(context)
    }

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
