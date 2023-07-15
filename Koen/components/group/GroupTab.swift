//
//  GroupTab.swift
//  Koen
//
//  Created by Guen on 27/06/2023.
//

import SwiftUI

struct GroupTab: View {
    @EnvironmentObject var context: WordGroupContext
    @Namespace private var animation
    
    @State var currentTab: CGFloat = 0
    @State var tabs: [GroupTabItem] = [
        GroupTabItem(label: "Learing", icon: ""),
        GroupTabItem(label: "Learned", icon: ""),
        GroupTabItem(label: "Ranking", icon: "")
    ]

    @State private var progress: Float = 0.5
    
    var body: some View {
        VStack(spacing: 26) {
            
        }
    }
}


struct CustomProgressView: ViewModifier {
    let progress: Float
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.3))
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: CGFloat(progress) * geometry.size.width, height: geometry.size.height)
                    .animation(.easeInOut, value: progress)
            }
        }
    }
}

struct GroupTabItem: Identifiable {
    let id = UUID()
    let label: String
    let icon: String
}

struct GroupTab_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
