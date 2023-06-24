//
//  HomeBanner.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct HomeBanner: View {
    var body: some View {
        Rectangle()
            .fill(Color("Gray"))
            .aspectRatio(12/6, contentMode: .fill)
            .cornerRadius(16)
    }
}

struct HomeBanner_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
