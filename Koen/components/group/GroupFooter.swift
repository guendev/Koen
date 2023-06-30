//
//  GroupFooter.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupFooter: View {
    var body: some View {
        HStack(spacing: 10) {
            
            Button {
                
                withAnimation {
                    //
                }
                
            } label: {
                
                Image(systemName: "brain")
                    .font(.kumbh(size: 16).weight(.heavy))
                    .foregroundColor(.white)
                    .applyButton(.warning)
                
            }
            
            
            Button {
                
            } label: {
                
                Text("START LEARNING")
                    .font(.kumbh(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .applyButton(.accentColor, block: true)
                
            }
            
        }
        .padding(.vertical, 18)
        .padding(.horizontal)
        .background(Color.white)
    }
}

struct GroupFooter_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
