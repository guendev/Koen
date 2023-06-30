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
    @State var height: CGFloat = 0
    
    func headerHeight() -> CGFloat {
        return width * 6 / 10
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            StretchyLayout(height: .constant(headerHeight()), pinnedViews: [.sectionFooters], edges: .top) {
                GroupContent()
                    .padding(.top, 10)
                    .frame(minHeight: height - headerHeight(), alignment: .top)
            } header: {
                GroupHeader()
                    .overlay(alignment: .top) {
                        
                        HStack {
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "arrow.left")
                                    .font(.title3)
                                    .foregroundColor(.white)
                            }

                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .font(.title3)
                                .foregroundColor(.white)
                            
                        }
                        .padding(.top, 50)
                        .padding(.horizontal)
                        
                    }
            }
            .viewSize(width: $width, height: $height)
            
            GroupFooter()
        }
    }
}

struct WordGroup_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
