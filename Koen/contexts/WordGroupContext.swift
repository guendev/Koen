//
//  LessionContext.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI

class WordGroupContext: ObservableObject {
    @Published
    var groupWord: WordGroup = fruitsGroup
    
    @Published
    var vocabularies: [Vocabulary] = [
        appleVocabulary,
        bananaVocabulary,
        orangeVocabulary,
        strawberryVocabulary,
        watermelonVocabulary,
        peachVocabulary,
        pineappleVocabulary,
        mangoVocabulary,
        kiwiVocabulary,
        grapeVocabulary
    ]
}
