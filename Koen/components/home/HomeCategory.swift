//
//  HomeCategory.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct HomeCategory: View {
    
    @EnvironmentObject var conext: HomeContext
    
    var body: some View {
        
        SessionView(title: "Category") {
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 15) {
                    
                    ForEach(conext.categories) { category in
                        Button {
                            
                            withAnimation {
                                conext.openedLession = true
                            }
                            
                        } label: {
                            
                            VStack(spacing: 4) {
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Gray"))
                                    .frame(width: 68, height: 68)
                                
                                Text(category.name)
                                    .font(.custom(Poppins.Regular.rawValue, size: 14))
                                    .lineLimit(1)
                                    .frame(width: 68)
                            }
                            
                        }
                        .buttonStyle(.plain)
                        .fullScreenCover(isPresented: $conext.openedLession) {
                            Lession()
                        }

                    }
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

struct HomeCategory_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
