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
            
            HStack(spacing: 10) {
                
                Button {
                    
                } label: {
                    
                    Text("BACK")
                        .font(.custom(Poppins.SemiBold.rawValue, size: 16))
                        .foregroundColor(.white)
                        .tracking(0.05)
                        .lineSpacing(18)
                    
                }
                .padding(.vertical, 15)
                .padding(.horizontal, 19)
                .background(Color("Waring"))
                .cornerRadius(20)
                .clipped()
                .shadow(color: Color("Waring").opacity(0.5), radius: 1)
                
                
                Button {
                    
                } label: {
                    
                    Text("START LEARNING")
                        .font(.custom(Poppins.SemiBold.rawValue, size: 16))
                        .foregroundColor(.white)
                        .tracking(0.05)
                        .lineSpacing(18)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(Color("Primary"))
                .cornerRadius(20)
                .clipped()
                .shadow(color: Color("Primary").opacity(0.5), radius: 8)
                
            }
            .padding(.vertical, 18)
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
