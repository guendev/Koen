//
//  Upgrade.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct Upgrade: View {
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
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        
                        Text("Do More!")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("Updare you plan and boost up your English level")
                            .font(.title3)
                        
                    }
                    .foregroundColor(.accentColor)
                    .frame(maxWidth: .infinity)
                    
                    VStack {
                        
                        Image("scientist")
                            .resizable()
                            .scaledToFit()
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                }
                
            }
            .padding(.horizontal)
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
                        .foregroundColor(.text2)
                        .opacity(0.6)
                }
                
                Spacer()
                
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
            UpgradeFooter()
        }
        .background {
            Color.accentColor
                .opacity(0.01)
                .ignoresSafeArea()
        }
        .coordinateSpace(name: "scrollView")
    }
}

struct Upgrade_Previews: PreviewProvider {
    static var previews: some View {
        Upgrade()
    }
}
