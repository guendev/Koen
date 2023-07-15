//
//  GroupName.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupName: View {
    
    @EnvironmentObject
    var conext: WordGroupContext
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("You can also use your own")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.text)
                .tracking(0.06)
            
            Text("Dissuade ecstatic and properly saw entirely sir why laughter endeavor. In on my jointure horrible margaret suitable he followed speedily. Indeed vanity excuse or mr lovers of on. By offer scale an stuff. Blush be sorry no sight. Sang lose of hour then he left find.")
                .font(.subheadline)
                .lineLimit(4)
                .foregroundColor(.text2)

        }
    }
}

struct GroupName_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
