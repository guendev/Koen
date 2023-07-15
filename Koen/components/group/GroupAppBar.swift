//
//  GroupAppBar.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct GroupAppBar: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.text)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "heart")
                    .font(.title3)
                    .foregroundColor(.text)
            }

        }
        .padding(.horizontal)
        .padding(.bottom)
        .background {
            Color.backgroud
                .opacity(0)
                .ignoresSafeArea()
        }
    }
}

struct GroupAppBar_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
