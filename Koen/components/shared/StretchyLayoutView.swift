//
//  StretchyLayoutView.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct StretchyLayoutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HeaderView()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        HeaderView()
                        HeaderView()
                    }
                }
                
                ScrollView {
                    VStack(spacing: 0) {
                        SectionView()
                        SectionView()
                        SectionView()
                    }
                }
            }
        }
    }
}

struct HeaderView: View {
    @State private var offset: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            Image("headerImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(y: -self.offset)
                .clipped()
                .onAppear {
                    self.offset = geometry.frame(in: .global).minY
                }
                .onReceive(ScrollViewReader { proxy in
                    withAnimation {
                        self.offset = proxy.frame(of: "header").minY
                    }
                }) { _ in }
                .frame(height: 200)
                .background(Color.gray)
        }
        .frame(height: 200)
        .id("header")
    }
}

struct SectionView: View {
    var body: some View {
        VStack {
            Text("Section Title")
                .font(.title)
                .padding()
            
            // Add your section content here
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .padding(.bottom, 16)
    }
}

struct StretchyLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        StretchyLayoutView()
    }
}
