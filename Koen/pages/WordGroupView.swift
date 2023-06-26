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
    
    var body: some View {
        
        StretchyLayout(height: .constant(width * 6 / 10), pinnedViews: [.sectionFooters], edges: .top) {
            GroupContent()
        } header: {
            GroupHeader()
        } footer: {
            GroupFooter()
        }
        .containerWidth($width)
    }
}

struct WordGroup_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
