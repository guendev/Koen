//
//  Home.swift
//  Koen
//
//  Created by Guen on 22/06/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                HomeNavigation()
            }
            .frame(maxWidth: .infinity)
            .background(Color("Background"))
            
        }
    }

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
