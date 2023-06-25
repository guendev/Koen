//
//  Vocabulary.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI

struct Vocabulary: Identifiable {
    let id: String
    let word: Word
    let language: String
    let destination: String
    let example: String
}

// Vocabulary objects
let appleVocabulary = Vocabulary(id: "1", word: apple, language: "Spanish", destination: "manzana", example: "Me gusta comer manzanas.")
let bananaVocabulary = Vocabulary(id: "2", word: banana, language: "French", destination: "banane", example: "Je mange une banane tous les matins.")
let orangeVocabulary = Vocabulary(id: "3", word: orange, language: "German", destination: "Orange", example: "Ich liebe den süßen Geschmack von Orangen.")
let catVocabulary = Vocabulary(id: "4", word: cat, language: "Spanish", destination: "gato", example: "Mi gato es muy juguetón.")
let dogVocabulary = Vocabulary(id: "5", word: dog, language: "French", destination: "chien", example: "Je promène mon chien tous les matins.")
let elephantVocabulary = Vocabulary(id: "6", word: elephant, language: "German", destination: "Elefant", example: "Elefanten sind für ihre Intelligenz und ihr Gedächtnis bekannt.")
