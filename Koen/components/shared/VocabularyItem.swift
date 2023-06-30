//
//  VocabularyItem.swift
//  Koen
//
//  Created by Guen on 29/06/2023.
//

import SwiftUI

struct VocabularyItem: View {
    var vocabulary: Vocabulary
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(systemName: "play.circle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 2) {
                
                Text(vocabulary.word.word.capitalized)
                    .font(.kumbh(size: 16))
                    .fontWeight(.semibold)
                
                Text(vocabulary.destination)
                    .font(.kumbh(size: 16))
                    .foregroundColor(.secondary)
                
            }
            
            Spacer(minLength: 2)
            
            Image(systemName: "lock.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color("Warning"))
                .frame(width: 24, height: 24)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct VocabularyItem_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
