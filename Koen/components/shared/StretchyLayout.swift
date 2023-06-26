//
//  StretchyLayout.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct StretchyLayout<Content, Header, Footer>: View where Content: View, Header: View, Footer: View {
    @Binding var height: CGFloat
    var pinnedViews: PinnedScrollableViews = .init()
    var edges: Edge.Set = .init()
    
    var content: () -> Content
    var header: () -> Header
    var footer: () -> Footer?
    
    init(
        height: Binding<CGFloat> = .constant(250),
        pinnedViews: PinnedScrollableViews = [.sectionHeaders],
        edges: Edge.Set = .init(),
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder header: @escaping () -> Header,
        @ViewBuilder footer: @escaping () -> Footer? = { nil }
    ) {
        self._height = height
        self.pinnedViews = pinnedViews
        self.edges = edges
        self.content = content
        self.header = header
        self.footer = footer
    }
    
    init(
        height: Binding<CGFloat> = .constant(250),
        pinnedViews: PinnedScrollableViews = [.sectionHeaders],
        edges: Edge.Set = .init(),
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder header: @escaping () -> Header
    ) where Footer == EmptyView {
        self._height = height
        self.pinnedViews = pinnedViews
        self.edges = edges
        self.content = content
        self.header = header
        self.footer = {
            (EmptyView())
        }
    }
    
    @State var headerHeight: CGFloat = 0
    
    var body: some View {
        ScrollView {
            // just remove .sectionHeaders to make it non-sticky
            LazyVStack(spacing: 8, pinnedViews: pinnedViews) {
                Section {
                    // >> any content
                    content()
                    // << content end
                } header: {
                    // here is only caculable part
                    GeometryReader {
                        // detect current position of header bottom edge
                        Color.clear.preference(key: StretchyHeaderOffsetKey.self,
                            value: $0.frame(in: .named("area")).maxY)
                    }
                    .frame(height: height)
                    .onPreferenceChange(StretchyHeaderOffsetKey.self) {
                        // prevent image illegal if header is not pinned
                        headerHeight = $0 < 0 ? 0.001 : $0
                    }
                } footer: {
                                    
                    footer()

                }
            }
        }
        .coordinateSpace(name: "area")
        .overlay(
            // >> any header
            header()
            // << header end
                .frame(height: headerHeight)
                .clipped()
                .allowsHitTesting(false)
        , alignment: .top)
        .clipped()
        .edgesIgnoringSafeArea(edges)
    }
}


struct StretchyHeaderOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}


struct StretchyLayout_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
