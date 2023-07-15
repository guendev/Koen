//
//  WordGroup.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct WordGroupView: View {
    
    @EnvironmentObject var context: WordGroupContext
    @Environment(\.presentationMode) var presentationMode
    
    @State var headerHeight: CGFloat = 0
    @State var scrollOffset: CGFloat = 0
    
    
    func getOpacity() -> CGFloat {
        if scrollOffset >= headerHeight {
            return 1
        }
        if scrollOffset < 0 {
            return 0
        }
        
        if scrollOffset > 0 && scrollOffset <= headerHeight {
            return scrollOffset / headerHeight
        }
        return 0
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                GroupAvatar()
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.top)
            .padding(.top)
            .frame(maxWidth: .infinity)
            .background{
                GeometryReader {
                    Color.clear.preference(
                        key: ViewOffsetKey.self,
                        value: -$0.frame(in: .named("scrollView")).origin.y
                    )
                }
            }
            .onPreferenceChange(ViewOffsetKey.self) { value in
                scrollOffset = value
            }
        }
        .frame(maxWidth: .infinity)
        .overlay(alignment: .top) {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundColor(.text)
                }
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .font(.title3)
                    .foregroundColor(.text)
            }
            .padding(.horizontal)
            .padding(.bottom)
            .background {
                Color.backgroud
                    .ignoresSafeArea()
                    .opacity(getOpacity())
            }
            .viewSize(height: $headerHeight)
        }
        .overlay(alignment: .bottom) {
            GroupFooter()
                .background(Color.backgroud)
        }
        .background {
            Color.backgroud
                .ignoresSafeArea()
        }
        .coordinateSpace(name: "scrollView")
    }
}

struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}

struct WordGroup_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
