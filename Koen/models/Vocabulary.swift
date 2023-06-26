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
    let language: String // jp,
    let destination: String
    let example: String
}

let appleVocabulary = Vocabulary(id: "1", word: apple, language: "vn", destination: "quả táo", example: "Tôi thích ăn táo.")
let bananaVocabulary = Vocabulary(id: "2", word: banana, language: "vn", destination: "quả chuối", example: "Tôi ăn một quả chuối mỗi sáng.")
let orangeVocabulary = Vocabulary(id: "3", word: orange, language: "vn", destination: "quả cam", example: "Tôi thích vị ngọt của quả cam.")
let strawberryVocabulary = Vocabulary(id: "7", word: strawberry, language: "vn", destination: "quả dâu tây", example: "Tôi thích ăn dâu tây với kem tươi.")
let watermelonVocabulary = Vocabulary(id: "8", word: watermelon, language: "vn", destination: "quả dưa hấu", example: "Tôi thích ăn dưa hấu vào những ngày nóng.")
let peachVocabulary = Vocabulary(id: "9", word: peach, language: "vn", destination: "quả đào", example: "Tôi thích ăn đào vào mùa hè.")
let pineappleVocabulary = Vocabulary(id: "10", word: pineapple, language: "vn", destination: "quả dứa", example: "Tôi thích ăn dứa trên bánh pizza.")
let mangoVocabulary = Vocabulary(id: "11", word: mango, language: "vn", destination: "quả xoài", example: "Tôi thích ăn xoài trong sinh tố.")
let kiwiVocabulary = Vocabulary(id: "12", word: kiwi, language: "vn", destination: "quả kiwi", example: "Tôi thích ăn kiwi với sữa chua.")
let grapeVocabulary = Vocabulary(id: "13", word: grape, language: "vn", destination: "quả nho", example: "Tôi thích ăn nho như một loại snack.")
