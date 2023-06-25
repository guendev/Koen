//
//  ContentView.swift
//  Koen
//
//  Created by Guen on 15/06/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    init() {
            UITabBar.appearance().isHidden = true
    }
    
    
    @State var currentTab: MainTab = MainTab.Discovery
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $currentTab) {
                Home()
                    .tag(MainTab.Discovery)
                            
                Color.yellow
                    .tag(MainTab.Voice)
                            
                Color.pink
                    .tag(MainTab.Edit)
                            
                            
                Color.red
                    .tag(MainTab.Filter)
            }
            
            CustomTabView()
        }
    }
    
    
    @ViewBuilder
    func CustomTabView() -> some View {
        GeometryReader { proxy in
            HStack {
                ForEach(MainTab.allCases, id: \.rawValue) { tab in
                    
                    Button {
                        
                        withAnimation(.easeInOut(duration: 0.2)) {
                            currentTab = tab
                        }
                        
                    } label: {
                        
                        Image(currentTab.rawValue == tab.rawValue ? tab.rawValue + "Bold" : tab.rawValue)
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color("Primary") : .gray)
                        
                    }

        
                }
            }
        }
        .frame(height: 30)
        //.padding(.bottom, 10)
        .padding([.horizontal, .top])
    }
}


enum MainTab: String, CaseIterable {
    case Discovery = "Category"
    case Voice = "Voice"
    case Edit = "Edit"
    case Filter = "Filter"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
