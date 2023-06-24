//
//  HomeCategories.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct HomeCategories: View {
    
    @EnvironmentObject var conext: HomeContext
    
    var body: some View {
        
        Section(StringProtocol, content: <#T##() -> View#>)
        
        SessionView(title: "Category") {
            // view content
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15) {
                    
                    ForEach(conext.categories) { category in
                        VStack {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("Gray"))
                                .frame(width: 68, height: 68)
                            
                            Text(category.name)
                                .lineLimit(2)
                                .frame(width: 68)
                        }
                    }
                    
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct HomeCategories_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
