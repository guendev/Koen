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
        
        StretchyLayout(height: .constant(width * 6 / 10), pinnedViews: [.sectionFooters, .sectionHeaders], edges: .top) {
            
            VStack {
                ForEach(0...100, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .background(RoundedRectangle(cornerRadius: 12).fill(index % 2 == 0 ? Color.blue : Color.yellow))
                        .padding(.horizontal)
                }
            }
            
        } header: {
            GeometryReader { proxy in
                Rectangle()
                    .fill(Color.clear)
                    .background {
                        WebImage(src: "https://i.imgur.com/EHqRMxW.jpeg")
                            .resizable()
                            .scaledToFill()
                    }
            }
        } footer: {
            
            VStack(spacing: 10) {
                
                Button {
                    
                } label: {
                    
                    Text("START LEARNING")
                        .font(.custom(Poppins.SemiBold.rawValue, size: 16))
                        .foregroundColor(.white)
                        .tracking(0.05)
                        .lineSpacing(18)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 17)
                .background(Color("Primary"))
                .cornerRadius(20)
                .clipped()
                
            }
            .padding(.top, 18)
            .padding(.horizontal)
            .background(Color.white)
            
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
