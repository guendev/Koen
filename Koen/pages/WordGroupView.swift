//
//  WordGroup.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct WordGroupView: View {
    
    @EnvironmentObject var conext: WordGroupContext
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var width: CGFloat = 0

    @State var offsetY: CGFloat = .zero
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                WebImage(src: "https://i.imgur.com/EHqRMxW.jpeg")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                
                ForEach(1...100, id: \.self) { index in
                    Text("Row \(index)")
                        .frame(height: 50)
                }
                
            }
            .frame(maxWidth: .infinity)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct WordGroup_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
