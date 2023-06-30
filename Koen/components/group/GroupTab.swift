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

    
    var body: some View {
        VStack(spacing: 26) {
            
            HStack(spacing: 10) {
                
                ForEach(GroupTabs.allCases, id: \.self) { tab in
                    Button {
                        
                        withAnimation {
                            context.tab = tab
                        }
                        
                    } label: {
                        
                        Text(tab.rawValue)
                            .font(.kumbh())
                            .fontWeight(.semibold)
                            .foregroundColor(context.tab == tab ? .white : .black)
                            .applyButton(.clear, block: true, shadow: false)
                            .background {
                                if context.tab == tab {
                                    Color.clear
                                        .applyButton(shadow: false)
                                        .matchedGeometryEffect(id: "WordGroupTab", in: animation)
                                }
                            }
                        
                    }
                }

            }
            .padding(10)
            .background {
                Color("Gray").opacity(0.3)
            }
            .cornerRadius(20)
            
            
            VStack(spacing: 28) {
                ForEach(context.vocabularies, id: \.id) { vocabulary in
                    HStack {
                        VocabularyItem(vocabulary: vocabulary)
                    }
                }
            }
            
        }
    }
}

enum GroupTabs: String, CaseIterable {
    case Learning = "Learning"
    case Learned = "Learned"
}

struct GroupTab_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
